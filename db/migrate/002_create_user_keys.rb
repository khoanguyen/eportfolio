class CreateUserKeys < Sequel::Migration
  def up
    create_table :user_keys do
      String :user_key, :size => 36, :fixed => true, :primary_key => true 
      String :username, :size => 50 
      DateTime :register_time
      DateTime :expired_on
      
      index :expired_on
      index :username
    end
  end

  def down
    drop_table :user_keys
  end
end
