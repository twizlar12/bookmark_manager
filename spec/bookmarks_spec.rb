require "./lib/bookmarks.rb"

describe BookMarks do  
  it "should create an instance of itself" do 
    expect(subject).to be_instance_of BookMarks
  end

  describe "#list" do
    it "should return a list of bookmarks" do

      BookMarks.add(url: 'http://www.makersacademy.com')
      BookMarks.add(url: 'http://www.destroyallsoftware.com')
      BookMarks.add(url: 'http://www.google.com')

      bookmarks = BookMarks.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe "#add" do
    it "should add a new bookmark" do

      BookMarks.add(url: 'http://www.BBCSports.com')

      bookmarks = BookMarks.all
      expect(bookmarks).to include('http://www.BBCSports.com')
    end
  end
end