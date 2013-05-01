require_relative "../src/position"

describe Position do
  before :each do
    @position = Position.new({:x => 1, :y => 2, :orientation => "N"})    
  end
  
  it "should have the co-ordinates" do
    @position.x.should eql(1)
    @position.y.should eql(2)
  end

  it "should get the front position" do
    @position.front
    @position.y.should eql(3)
  end

  it "should get the back position" do
    @position.back
    @position.y.should eql(1)
  end

  it "should get the left position" do
    @position.left
    @position.x.should eql(0)
  end

  it "should get the right position" do
    @position.right
    @position.x.should eql(2)
  end

end
