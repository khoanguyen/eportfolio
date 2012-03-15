require 'spec_helper'

describe "UserKey Model" do
  let(:user_key) { UserKey.new }
  it 'can be created' do
    user_key.should_not be_nil
  end
end
