require_relative '../src/rover'

describe Rover do

  before :each do
    @rover = Rover.new({
                        :x => 1,
                        :y => 2,
                        :orientation => "N"
                      })
  end
  
  it "should have a position and orientation" do
    @rover.x.should eql(1)
    @rover.y.should eql(2)
    @rover.orientation.current.should eql("N")
  end

  it "should set the position and orientation" do
    @rover.set_properties({
                            :x => 3,
                            :y => 1,
                            :orientation => "S"
                          })
    @rover.x.should eql(3)
    @rover.y.should eql(1)
    @rover.orientation.current.should eql("S")
  end

  it "should reorient" do
    @rover.reorient("S")
    @rover.orientation.current.should eql("S")
  end

  context "Movement" do    
    it "should move forward when pointing North" do
      @rover.move_forward
      @rover.x.should eql(1)
      @rover.y.should eql(3)
    end
    
    it "should move forward when pointing South" do
      @rover.reorient("S")
      @rover.move_forward
      @rover.x.should eql(1)
      @rover.y.should eql(1)
    end

    it "should move forward when pointing East" do
      @rover.reorient("E")
      @rover.move_forward
      @rover.x.should eql(2)
      @rover.y.should eql(2)
    end

    it "should move forward when pointing West" do
      @rover.reorient("W")
      @rover.move_forward
      @rover.x.should eql(0)
      @rover.y.should eql(2)
    end

  end
  
end



