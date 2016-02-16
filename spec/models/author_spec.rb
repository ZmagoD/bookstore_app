require 'rails_helper'

RSpec.describe Author, :type => :model do
  it "require the first name" do
    author = Fabricate.build( :author, first_name: nil)
      
    expect(author).to_not be_valid
    expect(author.errors[:first_name].any?).to be_truthy
  end
  it "require the last name" do
    author = Fabricate.build( :author, last_name: nil)
    #require 'pry'; binding.pry
    expect(author).to_not be_valid
    expect(author.errors[:last_name].any?).to be_truthy      
  end
  
  describe "#full_name" do
    it "returns a full name of the author" do
      author = Fabricate(:author, first_name: "John" , last_name: "Doe")
      
      expect(author.full_name).to eq("John Doe")
    end
  end
end