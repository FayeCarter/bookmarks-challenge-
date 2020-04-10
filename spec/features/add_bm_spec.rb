feature "add bookmarks" do

  scenario 'we a new bookmark is added' do
    visit '/add_bookmark'
    fill_in 'url', with: 'www.google.co.uk'
    fill_in 'title', with: 'Test Bookmark'
    click_button 'Submit'
    expect(page).to have_link('Test Bookmark', href: 'www.google.co.uk')
  end

end