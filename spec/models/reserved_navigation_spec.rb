require 'spec_helper'

describe "ReservedNavigation Model" do
  let(:reserved_navigation) { ReservedNavigation.new }
  it 'can be created' do
    reserved_navigation.should_not be_nil
  end
end
