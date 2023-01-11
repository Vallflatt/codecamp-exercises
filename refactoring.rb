# if condition
# code to do something
# end
# but if the "do something is a short, simple expression, single line is possible like
# expression if boolean
# example: puts "it's true" if true
# same with unless

ruby_is_fast = false

puts "Ruby is not fast" unless ruby_is_fast

ruby_is_cool = true

puts "I like Ruby" if ruby_is_cool

# ternary conditional expression : shortest way with if/else
# takes 3 arguments : 1. a boolean, 2. expression to evaluate if the boolean is true, 3. expression to evaluate if the boolean is false

# syntax: boolean ? do this if true: do this if false

puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4"

puts 4 / 2 == 2 ? "4 divided by 2 equals 2" : "4 divided by 2 equals 0"

# case statement: when and then, one line, example 

puts "Please enter a language"

language = "Ruby"

case language
  when "JS" then puts "Websites"
  when "Python" then puts "science"
  when "Ruby" then puts "Web apps"
  else puts "I don't know"
end

# same as 

case language
when "JS"
    puts "Websites"
    
when "Python"
    puts "science"

when "Ruby"
    puts "web apps"
    
else 
    puts "I don't know"
    
end

# conditional assignment: ||= to assign a variable only if it hasn't already been assigned

favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

# implicit return, Ruby specialty
# in a method in Ruby: will return the result of the last evaluated statement. 
# return not needed if last statement

def multiple_of_three(n)
    n % 3 == 0 ? "true" : "false"
end

puts multiple_of_three(27)