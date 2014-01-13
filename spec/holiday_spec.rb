require 'spec_helper'

describe "holiday_supplies_hash" do
	let(:holiday_supplies) {
												   {
													 	  :winter => {
													 	    :christmas => ["Lights", "Wreath"],
													 	    :new_years => ["Party Hats"]
													 	  },
													 	  :summer => {
													 	    :fourth_of_july => ["Fireworks", "BBQ"]
													 	  },
													 	  :fall => {
													 	    :thanksgiving => ["Turkey"]
													 	  },
													 	  :spring => {
													 	    :memorial_day => ["BBQ"]
													 	  }
												 	 }
												 }

	let(:supply) {"balloons"}

	describe "#first_memorial_day_supply" do
		it "should return BBQ" do
			expect(first_memorial_day_supply(holiday_supplies)).to eq("BBQ")
		end
	end

	describe "#new_winter_holiday_supply" do
		before do
			add_supply_to_winter_holiday(holiday_supplies, supply)
			@christmas_supplies = holiday_supplies[:winter][:christmas]
			@new_years_supplies = holiday_supplies[:winter][:new_years]
      @winter_supplies = @christmas_supplies + @new_years_supplies
		end
		
		it "should add a supply to a winter holiday" do 
			expect(@winter_supplies).to include(supply)
		end
	end

	describe "#add_supply_to_memorial_day" do
		before do 
			add_supply_to_memorial_day(holiday_supplies, supply)
			@memorial_day_supplies = holiday_supplies[:spring][:memorial_day]
		end

		it "should add a supply to memorial day" do
			expect(@memorial_day_supplies).to include(supply)
		end
	end

	describe "#add_new_holiday_with_supplies" do
		before do
			@season = :fall
			@new_holiday_name = :columbus_day
			@supplies_list = ["flags", "parade floats", "candle sticks"]
			@new_holiday_hash = add_new_holiday_with_supplies(holiday_supplies, @season, @new_holiday_name, @supplies_list)
		end

		it "should still have exactly 4 seasons" do
			expect(holiday_supplies.keys.size).to eq(@new_holiday_hash.keys.size)
		end

		it "should have an extra holiday in a season" do
			expect(@new_holiday_hash[@season][@new_holiday_name]).to eq(@supplies_list)
		end
	end

	describe "#all_winter_holiday_supplies" do
		before do
			@winter_supplies = holiday_supplies[:winter].map do |holiday, supplies|
				supplies
			end.flatten
		end

		it "should have all the winter supplies" do
			expect(all_winter_holiday_supplies(holiday_supplies)).to eq(@winter_supplies)
		end
	end

	describe "#all_supplies_in_holidays" do
		before do
			@output = ""
			holiday_supplies.each do |season, holidays|
				@output << "#{season.capitalize}:\n"
				holidays.each do |holiday, supplies|
					@output << "  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}\n"
				end
			end
		end

    it "should output the formatted list of holidays and their supplies" do
      @output.each_line do |line|
        expect($stdout).to receive(:puts).with(line.chomp)
      end

      all_supplies_in_holidays(holiday_supplies)
    end
	end

  describe "#all_holidays_with_bbq" do
    it "should return :fourth_of_july and :memorial_day" do
      expect(all_holidays_with_bbq(holiday_supplies)).to eq([:fourth_of_july, :memorial_day])
    end
  end

end






