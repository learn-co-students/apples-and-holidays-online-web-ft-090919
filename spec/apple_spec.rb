require 'spec_helper'


describe "#apple_picker_with_select" do

  let(:fruit_array) { ["apple", "orange", "apple"] }

  it "should return an array of apples" do
    expect(apple_picker_with_select(fruit_array)).to_not include("orange")
  end

end

describe "#apple_picker_with_collect" do

  let(:fruit_array) { ["apple", "orange", "apple"] }

  it "should return an array of apples" do
    expect(apple_picker_with_collect(fruit_array)).to_not include("orange")
  end

  it "should return an array without nil elements" do
    expect(apple_picker_with_collect(fruit_array)).to_not include(nil)
  end

end