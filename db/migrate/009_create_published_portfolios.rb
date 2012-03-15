class CreatePublishedPortfolios < Sequel::Migration
  def up
    create_table :published_portfolios do
      primary_key :id
      
    end
  end

  def down
    drop_table :published_portfolios
  end
end
