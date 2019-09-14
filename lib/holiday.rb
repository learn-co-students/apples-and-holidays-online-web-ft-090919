require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, old_supply|
        old_supply << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, old_supply|
      if holiday == :memorial_day
        old_supply << supply
      end
    end  
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supply_array = []
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, supplies|
          supplies.each do |supply|
            supply_array << supply
          end
      end
    end
  end
  supply_array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |seasons, holidays|
    puts "#{seasons.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
      holiday_name = holiday.to_s.split("_").join(" ").capitalize
      if holiday_name.split(" ").length > 1
        tempoary_name = holiday_name.split(" ")
        tempoary_name.map do |individual_word|
          individual_word.capitalize!
        end
        holiday_name = tempoary_name.join(" ")
      end
      #formatted_holiday_name = holiday_name
      puts "  #{holiday_name}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  has_bbq = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        has_bbq << holiday
      end
    end
  end
  has_bbq
end







