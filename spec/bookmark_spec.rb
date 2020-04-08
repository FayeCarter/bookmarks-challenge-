require 'bookmark'

describe Bookmark do
  let(:bookmarks) { Bookmark.new }

  describe '#all' do
    it 'returns a list of bookmarks' do
      expect(Bookmark.all).to include "http://www.twitter.com"
      expect(Bookmark.all).to include "http://www.destroyallsoftware.com"
      expect(Bookmark.all).to include "http://www.google.com"
    end
  end
end
