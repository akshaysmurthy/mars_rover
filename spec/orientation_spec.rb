require_relative "../src/orientation"

describe Orientation do
  before :each do
    @orientation = Orientation.new("N")
  end
  
  it "should have the current orientation" do
    @orientation.current.should eql("N")
  end

  it "should get the orientation after turning" do
    @orientation.turn("L")
    @orientation.current.should eql("W")
    @orientation.turn("R")
    @orientation.current.should eql("N")
  end
end
  
