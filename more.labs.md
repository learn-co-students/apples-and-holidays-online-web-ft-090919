# Apple Picker

## Skills: Collect and Select

## Instructions

Create a method, apple_picker, that will pick all the apples out of an array. Implement it with collect and then implement it with select. Write a sentence about how select differs from collect.

```ruby
apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]
```

# Holiday Suppliers

## Skills: Hashes, Iteration, Collect

You have a bunch of decorations for various holidays organized by season.

```ruby
holiday_supplies = {
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
```
## Questions

1. How would you access the second supply for the forth_of_july?
ex: `holiday_supplies[:spring][:memorial_day][0]`

2. Add a supply to a Winter holiday.

3. Add a supply to memorial day.

4. Add a new holiday to any season with supplies.

5. Write a method to collect all Winter supplies from all the winter holidays.
ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`

6. Write a loop to list out all the supplies you have for each holiday and the season.

Output:
```
Winter:
  Christmas: Lights and Wreath
  New Years: Party Hats
```

7. Write a method to collect all holidays with BBQ.

`holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`
