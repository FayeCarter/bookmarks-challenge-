feature "see a list of bookmarks" do
  scenario "go to bookmarks parge and see bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content "bookmarks"
  end

  scenario "can see a url that is a bookmark" do
    Bookmark.create("http://www.google.com")

    visit '/bookmarks'
    expect(page).to have_content "http://www.google.com"
  end

  scenario 'we can add new bookmarks' do
    visit '/add_bookmark'
    fill_in 'url', with: 'www.google.co.uk'
    click_button 'Submit'
    expect(page).to have_content 'www.google.co.uk'
  end
end
