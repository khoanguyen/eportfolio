require 'spec_helper'

describe "PageElement Model" do
  let(:page_element) { PageElement.new }
  it 'can be created' do
    page_element.should_not be_nil
  end
end
