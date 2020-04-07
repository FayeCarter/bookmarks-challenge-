feature "infrastructure working" do
  scenario "test infrastructure working hello world" do
    visit '/'
    expect(page).to have_content "Hello world"
  end
end
