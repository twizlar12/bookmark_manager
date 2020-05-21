require "./lib/bookmarks.rb"

describe BookMarks do  
  it "should create an instance of itself" do 
    expect(subject).to be_instance_of BookMarks
  end

  describe "#list" do
    it "should return a list of bookmarks" do

      BookMarks.add(url: 'http://www.makersacademy.com', title: 'Makers')
      BookMarks.add(url: 'http://www.destroyallsoftware.com', title: 'Destroy')
      BookMarks.add(url: 'http://www.google.com', title: 'Google')

      bookmarks = BookMarks.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe "#add" do
    it "should add a new bookmark" do

      bookmarks = BookMarks.add(url: 'http://www.BBCSports.com', title: 'BBC Sport').first

      expect(bookmarks['url']).to eq 'http://www.BBCSports.com'
      expect(bookmarks['title']).to eq 'BBC Sport'
    end
  end
end