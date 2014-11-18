---
tags: collect, select, hashes, iteration, map, enumerables
languages: ruby
resources: 2
---

# Apples and Holidays

## Apple Picker

### Instructions

In `lib/apple.rb` write two methods that will pick the apples out of the fruits array, one using select, and the other using collect.

```ruby
fruits = ["apple", "orange", "apple"]

apple_picker_with_select(fruits) #=> ["apple", "apple"]
```

## The Holiday Suppliers

### Instructions

You have a bunch of decorations for various holidays organized by season.

```ruby
holiday_supplies = {
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
```

1. In `lib/holiday.rb`, write a method that returns the second supply for the Fourth of July. For eg:

```ruby
def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end
```

2. Write a method that adds a supply to a Winter holiday.

3. Write a method that adds a supply to Memorial Day.

4. Write a method that adds a new holiday and its associated supplies to any season.

5. Write a method to collect all Winter supplies from all the winter holidays. For eg:

```bash
winter_supplies(holiday_supplies) #=> ["Lights", "Wreath", etc]
```

6. Write a method that uses a loop to list out all the supplies you have for each holiday and the season.


Output:
```
Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
```

7. Write a method to collect all holidays with BBQ. For eg:

```bash
holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]
```

## Resources

* [Programming Ruby 1.9](http://books.flatironschool.com/books/11?page=36) - [2.3 Arrays and Hashes](http://books.flatironschool.com/books/11?page=36), page 36
* [Codequizzes](http://www.codequizzes.com/learn-ruby/) - [Iteration Nested Data Structures](http://www.codequizzes.com/learn-ruby/iteration-nested-data-structures)
