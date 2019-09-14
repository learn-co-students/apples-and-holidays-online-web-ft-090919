
 # supply_array = ""
 # holiday_hash[:spring] = [:memorial_day, :new_holiday]
 # holiday_hash[:spring][:new_holiday] = [supply_array]
 # # remember to return the updated hash
 # add_new_holiday_with_supplies
 
holiday_hash = 
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
 
 
 
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  season == :spring
  binding.pry
  # remember to return the updated hash
  add_new_holiday_with_supplies
end