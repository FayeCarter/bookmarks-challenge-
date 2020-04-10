require 'bookmark'

describe Bookmark do
  
  it 'responds to #bookmark' do
    expect(described_class).to respond_to :all
  end

  describe '.all' do
    it 'returns a list of bookmarks' do
      Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy Software')
      Bookmark.create(url: 'http://www.google.com', title: 'Google.com')

      expect(Bookmark.all).to include("http://www.makersacademy.com")
      expect(Bookmark.all).to include("http://www.destroyallsoftware.com")
      expect(Bookmark.all).to include("http://www.google.com")
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
