feature "add bookmarks" do

  scenario 'we a new bookmark is added' do
    visit '/add_bookmark'
    fill_in 'url', with: 'http://www.google.co.uk'
    fill_in 'title', with: 'Test Bookmark'
    click_button 'Submit'
    expect(page).to have_link('Test Bookmark', href: 'http://www.google.co.uk')
  end

  scenario 'The bookmark must be a valid URL' do
    visit('add_bookmark')
    fill_in('url', with: 'not a real bookmark')
    click_button('Submit')
  
    expect(page).not_to have_content "not a real bookmark"
    expect(page).to have_content "You must submit a valid URL."
  end
end