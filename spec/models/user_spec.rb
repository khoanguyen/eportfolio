require 'spec_helper'

describe "User Model" do
  let(:invalid_user) { User.new }
                             
  it 'should be invalid when creating an empty user' do
    invalid_user.should_not be_valid
  end
  
  it 'should not valid when the username does not match /^\w+$/'
  it 'should not valid when email is not match'
end
