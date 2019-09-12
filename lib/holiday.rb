require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
   holiday_supplies[:winter].each do |key, value| 
    value << supply
  end
end



def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season,holiday_hash|
  season_string = season.to_s.capitalize!
  puts "#{season_string}:"
  holiday_hash.each do |attribute, value|
    attribute_string = attribute.to_s.split('_').map(&:capitalize!).join(" ")
    puts "  #{attribute_string}: #{value.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
   bbq_holidays = []
  holiday_hash.each do |season, season_hash|
    season_hash.each do |holiday, holiday_items|
      if holiday_items.include?("BBQ")
        bbq_holidays << holiday
      end 
    end
  end
  bbq_holidays
end
  








