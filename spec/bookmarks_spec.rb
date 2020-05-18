require "./lib/bookmarks.rb"

describe BookMarks do  
  it "should create an instance of itself" do 
    expect(subject).to be_instance_of BookMarks
  end

  describe "#list" do
    it "should return a list of bookmarks" do
      subject.list << "hello"
      expect(subject.list).to eq ["hello"]
    end
  end
end