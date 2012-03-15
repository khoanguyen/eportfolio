class CreatePages < Sequel::Migration
  def up
    create_table :pages do
      primary_key :id
      
    end
  end

  def down
    drop_table :pages
  end
end
