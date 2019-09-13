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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday| 
    season = season.to_s.capitalize+":"
    puts season
    holiday.each do |holiday, supplies|
      if holiday.to_s.include?("_")
        holiday = holiday.to_s.split("_")
        holiday = holiday.collect {|w| w.capitalize}
        holiday = holiday.join(" ") + ": "
      else 
        holiday = holiday.capitalize.to_s + ": "
      end 
      supplies = supplies.join(", ")
      puts "  " + holiday + supplies
    end
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_days = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      bbq_days << holiday if supplies.include?("BBQ")
    end
  end
  bbq_days
end







