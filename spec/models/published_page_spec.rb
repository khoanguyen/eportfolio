require 'spec_helper'

describe "PublishedPage Model" do
  let(:published_page) { PublishedPage.new }
  it 'can be created' do
    published_page.should_not be_nil
  end
end
