feature "see a list of bookmarks" do
  scenario "go to bookmarks parge and see bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content "bookmarks"
  end
end
