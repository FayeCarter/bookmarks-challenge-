require 'bookmark'

describe Bookmark do
  it 'responds to #bookmark' do
    expect(subject).to respond_to :all
  end

  it 'has bookmark' do
    expect(subject.all).to include "www.google.co.uk"
  end
end
