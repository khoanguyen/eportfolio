class CreateUsers < Sequel::Migration
  def up
    create_table :users do
      String :username, :size => 50, :primary_key => true 
      String :password, :size => 100
      String :display_name, :size => 50 
      String :email, :null => false, :unique => true
      String :salt
      Integer :status, :default => 0, :null => false
      
      index :status
    end
  end

  def down
    drop_table :users
  end
end
