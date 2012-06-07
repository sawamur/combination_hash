require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "CombinationHash" do
  it "should equal if parameters in key are same combination of other" do
    h = CombinationHash.new
    h[3,4,5] = 8
    h[3,4,5].should == 8 
    h[5,4,3].should == 8 
    h[5,3,4].should == 8 
  end

  it "should be initialized with params" do
    h = CombinationHash([3,4] => 2,
                        [5,6,7] => 8)
    h[7,6,5].should == 8
    h[4,3].should == 2
  end


  it "shold be nil if parameters doesn't match any value" do
    h = CombinationHash.new
    h[3,4,5] = 8
    h[3,4,5,8].should be_nil
    h[3,5,8,1,9].should be_nil
    h[4,5,8].should be_nil
  end
end
