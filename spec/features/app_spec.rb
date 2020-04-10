feature "Homepage to have content" do
  
  scenario "index loads with welcome message" do
    visit '/'
    expect(page).to have_content "Hello world"
  end

  scenario "with view bookmarks button" do
    visit '/'
    expect(page).to have_button "view"
  end

  scenario "with add bookmarks button" do
    visit '/'
    expect(page).to have_button "add"
  end

end
