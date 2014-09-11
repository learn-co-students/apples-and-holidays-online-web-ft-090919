require 'spec_helper'

describe "holiday_supplies_hash" do
# Hash of seasons, the holidays in them, and some items each holiday might have.
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

 # Question 1
 # Write a method that returns the second supply for the Fourth of July
  describe "#second_supply_for_fourth_of_july" do
    it "should return BBQ" do
      expect(second_supply_for_fourth_of_july(holiday_supplies)).to eq("BBQ")
    end
  end

  # Question 2
  # Write a method that adds a supply to a Winter holiday
  describe "#add_supply_to_winter_holiday" do
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

  # Question 3
  # Write a method that adds a supply to Memorial Day
  describe "#add_supply_to_memorial_day" do
    before do
      add_supply_to_memorial_day(holiday_supplies, supply)
      @memorial_day_supplies = holiday_supplies[:spring][:memorial_day]
    end

    it "should add a supply to memorial day" do
      expect(@memorial_day_supplies).to include(supply)
    end
  end

  # Question 4
  # Write a method that adds a new holiday and its associated supplies to any season
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

  # Question 5
  # Write a method to collect all Winter supplies from all the winter holidays
  describe "#all_winter_holiday_supplies" do
    before do
      @winter_supplies = ["Lights", "Wreath", "Party Hats"]
    end

    it "should have all the winter supplies" do
      expect(all_winter_holiday_supplies(holiday_supplies)).to eq(@winter_supplies)
    end
  end

  # Question 6
  # Write a method that uses a loop to list out all the supplies you have for each holiday and the season
  describe "#all_supplies_in_holidays" do

    # There are two ways we might go about outputting a big block of text. One way
    # is to iterate through everything we want output, and puts it line by line. Another
    # way is to build a large string, and puts it all at once. How you choose to do it
    # is entirely up to you, and depends on what you think works best in any given
    # situation.

    before do

    # This funny looking <<-TEXT thing is called heredoc. It's a multi-line string
    # delimiter that makes it really easy for us to write multi-line strings in the middle
    # of code. The TEXT part is arbitrary too. It could easily have been <<-BLAHBLAH. The only
    # requirement is that you use the same word to end the multi-line string.

    # For more info about heredocs, see this link: http://en.wikibooks.org/wiki/Ruby_Programming/Here_documents

      @output = <<-TEXT
Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
Summer:
  Fourth Of July: Fireworks, BBQ
Fall:
  Thanksgiving: Turkey
Spring:
  Memorial Day: BBQ
TEXT
    end

    # For the purposes of this test, we are assuming that you decided to output your list
    # of holiday supplies line by line. If, on the other hand, you decided to output it
    # as one big chunk, comment out this test, and uncomment the one below it.

    it "should output the formatted list of holidays and their supplies" do
      @output.each_line do |line|
        expect($stdout).to receive(:puts).with(line.chomp)
      end

      all_supplies_in_holidays(holiday_supplies)
    end

    # it "should output the formatted list of holidays and their supplies" do
    #   expect($stdout).to receive(:puts).with(@output)
    # end

  end

  # Question 7
  # Write a method to collect all holidays with BBQ
  describe "#all_holidays_with_bbq" do
    it "should return :fourth_of_july and :memorial_day" do
      expect(all_holidays_with_bbq(holiday_supplies)).to eq([:fourth_of_july, :memorial_day])
    end
  end
end
