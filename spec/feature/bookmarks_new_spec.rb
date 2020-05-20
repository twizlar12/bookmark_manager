
feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Add')

    expect(page).to have_content 'http://testbookmark.com'
  end
end

