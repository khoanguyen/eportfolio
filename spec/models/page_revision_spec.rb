require 'spec_helper'

describe "PageRevision Model" do
  let(:page_revision) { PageRevision.new }
  it 'can be created' do
    page_revision.should_not be_nil
  end
end
