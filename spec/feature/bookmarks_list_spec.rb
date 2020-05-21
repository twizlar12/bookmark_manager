require 'pg'

feature "view bookmarks" do
  scenario "should be able to view all bookmarks" do 
    connection = PG.connect(dbname: 'bookmark_manager_test')
    visit ("/bookmarks")
    expect(page).to have_content "Bookmark list:"
  end

  feature "#bookmarks" do
    scenario "should present the list of bookmarks from the class" do 

      BookMarks.add(url: 'http://www.makersacademy.com')
      BookMarks.add(url: 'http://www.destroyallsoftware.com')
      BookMarks.add(url:'http://www.google.com')

      visit ("/bookmarks")
      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com"
    end
  end
end