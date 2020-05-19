require "./lib/bookmarks.rb"

describe BookMarks do  
  it "should create an instance of itself" do 
    expect(subject).to be_instance_of BookMarks
  end

  describe "#list" do
    it "should return a list of bookmarks" do
      bookmarks = Bookmarks.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end