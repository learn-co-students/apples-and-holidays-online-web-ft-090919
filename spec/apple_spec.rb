require 'spec_helper'

describe "Picking Apples" do
  let(:fruits) { ["apple", "orange", "apple"] }
  let(:smoothie) { ["carrot", "apple", "pepper", "cucumber", "apple", "apple"] }
  let(:veggies) { ["pepper", "carrot", "cucumber"] }

  describe "#apple_picker_with_select" do

    it "picks out the words that are not apple" do
      expect(apple_picker_with_select(fruits)).to_not include("orange")
      veggies.each do |veg| 
        expect(apple_picker_with_select(smoothie)).to_not include(veg)
      end
    end

    it "returns an array with the same # of elements as 'apples' in the original"
      expect(apple_picker_with_select(fruits).length).to eq(2)
      expect(apple_picker_with_collect(fruits).length).to eq(3)


    it "should return an array of all the apple strings that are in the argument" do
      expect(apple_picker_with_select(fruits).to eq(["apple", "apple"])
      expect(apple_picker_with_select(smoothie).to eq(["apple", "apple", "apple"])
    end
  end
  
  describe "#apple_picker_with_collect" do
    it "picks out the words that are not apple" do
      expect(apple_picker_with_collect(fruits)).to_not include("orange")
      veggies.each do |veg| 
        expect(apple_picker_with_collect(smoothie)).to_not include(veg)
      end
    end

    it "returns an array with the same # of elements as 'apples' in the original"
      expect(apple_picker_with_collect(fruits).length).to eq(2)
      expect(apple_picker_with_collect(fruits).length).to eq(3)


    it "should return an array of all the apple strings that are in the argument" do
      expect(apple_picker_with_collect(fruits).to eq(["apple", "apple"])
      expect(apple_picker_with_collect(smoothie).to eq(["apple", "apple", "apple"])
    end
    
    it "should return an array without nil elements" do
      expect(apple_picker_with_collect(fruits)).to_not include(nil)
    end
  end
end