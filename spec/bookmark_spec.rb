require 'bookmark'

describe Bookmark do
  let(:bookmark) { Bookmark.new }
  it 'responds to #bookmark' do
    expect(bookmark).to respond_to :all
  end

  it 'has bookmark' do
    expect(bookmark.all).to include "www.google.co.uk"
  end
end
