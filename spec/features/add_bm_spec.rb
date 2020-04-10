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

  feature 'Adding and viewing comments' do
    feature 'a user can add and then view a comment' do
      scenario 'a comment is added to a bookmark' do
        bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
  
        visit '/bookmarks'
        first('.bookmark').click_button 'Add Comment'
  
        expect(current_path).to eq "/bookmarks/#{bookmark.id}/comments/new"
  
        fill_in 'comment', with: 'This is a second comment'
        click_button 'Submit'
  
        expect(current_path).to eq '/bookmarks'
        expect(first('.bookmark')).to have_content 'This is a second comment'
      end
    end
  end
end