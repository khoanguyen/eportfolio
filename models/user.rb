class User < Sequel::Model
  plugin :validation_helpers
  
  set_allowed_columns :display_name, :email
  
  one_to_many :user_key, :key => :username 
  
  attr_accessor :user_password
  
  def before_save
    hash_user_password if self.user_password && !self.user_password.empty?
  end    
  
  def validate
    super
    validates_presence [:username, :salt, :email]
    validates_unique :username
    validates_unique :email
    validates_format /^\w+$/, :username, :message => "Invalid username"
    validates_format /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i, :email, :message => "Invalid Email"
  end
  
  # Creat a new User with given values
  def self.create_user(values)
    user = User.new values
    user.salt = UUID.generate
    user.user_password = values[:password]
    user.username = values[:username]
    user
  end
  
  # Sign in the current user
  # A new key will be created for the current user
  # During the process, all current user's expired_key will be removed
  def signin(valid_time)
    remove_expired_keys
    now = Time.now
    key = UserKey.new :register_time => now,
                      :expired_on => now + valid_time
    key.user_key = UUID.generate
    self.add_user_key key
    self.last_signin = now
    self.save
    key
  end
  
  private
  
  # Remove all expired key
  def remove_expired_keys
    self.user_key.each do |user_key|
      if user_key.expired?
        self.remove_user_key(user_key)
        user_key.delete
      end
    end
  end
  
  # Hash user_password and put the hash to password field, then clear the user_password
  def hash_user_password
    self.password = sha1_digest(self.user_password, self.salt)
    self.user_password = nil
  end
  
end
