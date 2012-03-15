class AddFieldsToUser < Sequel::Migration
  def up
    alter_table :users do
      add_column :last_signin, DateTime
    end
  end

  def down
    alter_table :users do
      drop_column :last_signin
    end
  end
end
