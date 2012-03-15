class UserKey < Sequel::Model
  
  many_to_one :user, :key => :username
  
  def update_expiration(valid_time)
    self.expired_on = Time.now + valid_time
    self.save
  end
  
  def expired?
    Time.now > self.expired_on
  end
  
end
