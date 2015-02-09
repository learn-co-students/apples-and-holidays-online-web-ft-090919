def second_supply_for_fourth_of_july(supplies_hash)
  supplies_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(supplies_hash, supply)
  supplies_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(supplies_hash, supply)
  supplies_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(supplies_hash, season, new_holiday_name, supplies_list)
  supplies_hash[season][new_holiday_name] = supplies_list
  supplies_hash
end

def all_winter_holiday_supplies(supplies_hash)
  holiday_supplies[:winter].map do |holiday, supplies|
    supplies
  end.flatten
end

def all_supplies_in_holidays(supplies_hash)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(supplies_hash)
  supplies_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end
