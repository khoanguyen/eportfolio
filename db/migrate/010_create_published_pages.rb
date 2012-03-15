class CreatePublishedPages < Sequel::Migration
  def up
    create_table :published_pages do
      primary_key :id
      
    end
  end

  def down
    drop_table :published_pages
  end
end
