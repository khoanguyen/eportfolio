require 'spec_helper'

describe "PublishedPortfolio Model" do
  let(:published_portfolio) { PublishedPortfolio.new }
  it 'can be created' do
    published_portfolio.should_not be_nil
  end
end
