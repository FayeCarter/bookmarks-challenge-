feature "see a list of bookmarks" do
  scenario "go to bookmarks parge and see bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content "bookmarks"
  end

  scenario "can see a url that is a bookmark" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    visit '/bookmarks'
    expect(page).to have_content "http://www.google.com"
  end
end
