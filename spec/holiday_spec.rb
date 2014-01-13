require 'spec_helper'

describe "holiday_supplies_hash" do
	let(:holiday_supplies) {
												   {
													 	  :winter => {
													 	    :christmas => ["Lights", "Wreath"],
													 	    :new_years => ["Party Hats"]
													 	  },
													 	  :summer => {
													 	    :forth_of_july => ["Fireworks", "BBQ"]
													 	  },
													 	  :fall => {
													 	    :thanksgiving => ["Turkey"]
													 	  },
													 	  :spring => {
													 	    :memorial_day => ["BBQ"]
													 	  }
												 	 }
												 }

	let(:supply) {"generic supply"}

	describe "#first_memorial_day_supply" do
		it "should return BBQ" do
			expect(first_memorial_day_supply(holiday_supplies)).to eq("BBQ")
		end
	end

	describe "#new_winter_holiday_supply" do
		before do
			add_supply_to_winter_holiday(supply)
			christmas_supplies = holiday_supplies[:winter][:christmas]
			new_years_supplies = holiday_supplies[:winter][:new_years]
		end
		
		it "should add a supply to a winter holiday" do 
			expect(christmas_supplies || new_years_supplies).to include(supply)
		end
	end

	describe "#new_memorial_day_supply" do
		before do 

end