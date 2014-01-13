---
  tags: todo, collect, select, hashes, iteration, collect, map
  languages: ruby
---

# Apple Picker

### Skills: Collect and Select

## Instructions

In apple.rb write two methods that will pick the apples out of the fruit_array, one using select, and the other using collect. 

```ruby
fruit_array = ["apple", "orange", "apple"]

apple_picker_with_select(fruit_array) #=> ["apple", "apple"]
```

When you're done, write a sentence describing the difference between collect and select, and what each method does. 

# Holiday Suppliers

### Skills: Hashes, Iteration, Collect

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
## Instructions

1. Write a method that returns the second supply for the forth_of_july.
ex:

        ```ruby
        def first_memorial_day_supply(holiday_supplies)
          holiday_supplies[:spring][:memorial_day][0]
        end
        ```

2. Write a method that adds a supply to a Winter holiday.

3. Write a method that adds a supply to Memorial Day.

4. Write a method that adds a new holiday to any season with supplies.

5. Write a method to collect all Winter supplies from all the winter holidays.
ex:

        ```bash
        winter_supplies(holiday_supplies) #=> ["Lights", "Wreath", etc]
        ```

6. Write a method that uses a loop to list out all the supplies you have for each holiday and the season.


        Output:
        ```
        Winter:
          Christmas: Lights and Wreath
          New Years: Party Hats
        ```

7. Write a method to collect all holidays with BBQ.
ex:

        ```bash
        holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]
        ```
