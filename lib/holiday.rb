require "pry"

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
  holiday_hash[:winter].each { |event_key, event_value| event_value << supply }
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
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |event_key, event_value|
    event_value.each do |value|
      winter_supplies << value
    end
  end

  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  seasons = []
  events = []
  supplies = []

  holiday_hash.each do |season, event|
    puts "#{season.to_s.capitalize}:"
    event.each do |event_name, supplies|
      formatted_event = "#{event_name.to_s.split("_").each { |word| word.capitalize! }.join(" ")}"
      formatted_supplies = supplies.join(", ")
      puts "  #{formatted_event}: " + "#{formatted_supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  events = holiday_hash.map do |season, event|
    event.map do |event_name, supplies|
      event_name if supplies.include?("BBQ")
    end
  end
  events.flatten.compact
end
