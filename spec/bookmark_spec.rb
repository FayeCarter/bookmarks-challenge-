require 'bookmark'

describe Bookmark do
  # let(:bookmarks) { Bookmark.new }
  it 'responds to #bookmark' do
    expect(described_class).to respond_to :all
  end



  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://makers.tech")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.co.uk")
    end
  end

end
