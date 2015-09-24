def apple_picker_with_collect(fruit_array)
  fruit_array.collect { |item| item if item == "apple" }.compact
end

def apple_picker_with_select(fruit_array)
  fruit_array.select { |item| item == "apple" }
end