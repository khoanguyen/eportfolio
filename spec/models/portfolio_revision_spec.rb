require 'spec_helper'

describe "PortfolioRevision Model" do
  let(:portfolio_revision) { PortfolioRevision.new }
  it 'can be created' do
    portfolio_revision.should_not be_nil
  end
end
