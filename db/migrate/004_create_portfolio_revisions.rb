class CreatePortfolioRevisions < Sequel::Migration
  def up
    create_table :portfolio_revisions do
      String portfolio_revision_id, :size => 36, :fixed => true, :primary => true
      String :title
      String :navigation_key, :size => 30
      String :page_tree
      
      index :navigation_key
    end
  end

  def down
    drop_table :portfolio_revisions
  end
end
