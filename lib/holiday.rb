require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash.each do |season, holiday|
   if season == :winter
     holiday.each do |key, value|
       value << supply
     end
   end
 end
 end 
    
    
    
 




def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
     if season == :spring
       holiday.each do |key, value|
         value << supply
       end
     end 
   end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash.each do |season, events|
    if season == :winter 
      return events.values.flatten
  
       
      end 
    end 
end 

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, event|
    puts "#{season.capitalize}:"
    event.each do |key, value| 
      puts "  #{key.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{value.join(", ")}"
    end 
  end
end 
      
  
    
    
    
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  wrong_array = []
  results_array = []
  holiday_hash.each do |season, event|
    event.each do |key, value|
      if value.include?("BBQ")
        results_array << key
      else 
        wrong_array << key
    end 
  end
end
results_array
end








