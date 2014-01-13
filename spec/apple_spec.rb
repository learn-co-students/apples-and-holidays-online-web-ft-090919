require 'spec_helper'

describe "Picking Apples" do
  let(:fruits) { ["apple", "orange", "apple"] }
  
  describe "#apple_picker_with_select" do
    it "should return an array of apples" do
      expect(apple_picker_with_select(fruits)).to_not include("orange")
    end
  end
  
  describe "#apple_picker_with_collect" do
    it "should return an array of apples" do
      expect(apple_picker_with_collect(fruits)).to_not include("orange")
    end
    
    it "should return an array without nil elements" do
      expect(apple_picker_with_collect(fruits)).to_not include(nil)
    end
  end
end

