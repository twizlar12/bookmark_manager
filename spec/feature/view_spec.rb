feature "view bookmarks" do
  scenario "should be able to view all bookmarks" do 
    visit ("/bookmark")
    expect(page).to have_content "Bookmark list:"
  end

  feature "#bookmarks" do
    scenario "should present the list of bookmarks from the class" do 
      visit ("/bookmark")
      expect(page).to have_content "hello"
    end
  end
end