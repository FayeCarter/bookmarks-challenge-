feature "add bookmarks" do

  scenario 'we a new bookmark is added' do
    visit '/add_bookmark'
    fill_in 'url', with: 'www.google.co.uk'
    click_button 'Submit'
    expect(page).to have_content 'www.google.co.uk'
  end

end