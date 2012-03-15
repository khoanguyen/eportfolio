class CreatePageRevisions < Sequel::Migration
  def up
    create_table :page_revisions do
      primary_key :id
      
    end
  end

  def down
    drop_table :page_revisions
  end
end
