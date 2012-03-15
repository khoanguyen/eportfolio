class CreatePageElements < Sequel::Migration
  def up
    create_table :page_elements do
      primary_key :id
      
    end
  end

  def down
    drop_table :page_elements
  end
end
