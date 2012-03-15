class CreatePortfolios < Sequel::Migration
  def up
    create_table :portfolios do
      String :portfolio_id, :size => 36, :fixed => true, :primary_key => true 
      Integer :visibility, :default => 0 # 0:public, 1:friend_only, 2:private
      String :head_revision, :size => 50
    end
  end

  def down
    drop_table :portfolios
  end
end
