feature "see a list of bookmarks" do
  scenario "go to bookmarks parge and see bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content "bookmarks"
  end

  scenario "can see a url that is a bookmark" do
    Bookmark.create(url: "http://www.google.com", title: "google.com")
    
    visit '/bookmarks'
    expect(page).to have_content "google.com"
  end

end
