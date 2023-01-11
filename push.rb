#.push is equal to << to add an item to an array

my_array = [1, 2, 3, 4]
my_array << 5
puts my_array

# also works on strings: 

puts "Virginie " << "Allflatt"

my_name = "Léal "
my_name += "Bioley"
puts my_name

# string interpolation, syntax #{} in a string

drink = "espresso"
puts "I love #{drink}!"

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end