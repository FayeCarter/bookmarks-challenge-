require 'bookmark'

describe Bookmark do
  # let(:bookmarks) { Bookmark.new }
  it 'responds to #bookmark' do
    expect(described_class).to respond_to :all
  end


  describe '.all' do
    it 'returns a list of bookmarks' do
      Bookmark.create('http://www.makersacademy.com')
      Bookmark.create('http://www.destroyallsoftware.com')
      Bookmark.create('http://www.google.com')
      
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.create' do
    it 'creates a bookmarks' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first

      expect(bookmark['url']).to eq 'http://www.testbookmark.com'
      expect(bookmark['title']).to eq 'Test Bookmark'
    end
  end
end
