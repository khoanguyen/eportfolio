require 'spec_helper'

describe "Portfolio Model" do
  let(:portfolio) { Portfolio.new }
  it 'can be created' do
    portfolio.should_not be_nil
  end
end
