require 'pg'

feature "view bookmarks" do
  scenario "should be able to view all bookmarks" do 
    connection = PG.connect(dbname: 'bookmark_manager_test')
    visit ("/bookmarks")
    expect(page).to have_content "Bookmark list:"
  end

  feature "#bookmarks" do
    scenario "should present the list of bookmarks from the class" do 

      BookMarks.add(url: 'http://www.makersacademy.com', title: 'Makers')
      BookMarks.add(url: 'http://www.destroyallsoftware.com', title: 'Destroy')
      BookMarks.add(url: 'http://www.google.com', title: 'Google')

      visit ("/bookmarks")
      expect(page).to have_link('Makers', href: "http://www.makersacademy.com")
      expect(page).to have_link('Destroy', href: "http://www.destroyallsoftware.com")
      expect(page).to have_link('Google', href: "http://www.google.com")
    end
  end
end