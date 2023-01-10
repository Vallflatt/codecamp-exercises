# blocks are like nameless methods
# take do + end or {}

def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}" # from index 1 to last character -1, cause index 0 is upcased
end

capitalize("virginie") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that does the same thing: 

["ryan", "jane"].each {|name| puts "#{name[0].upcase}#{name[1..-1]}"}

# a method can take a block as parameter, like each!
# abstracting certain tasks from the method and defining those tasks when the method is called
# abstracting: to make simpler

# combined comparison operator <=> returns 0 if operand1 == operand2, returns 1 if operand1 > operand2, returns -1 if operand1 < operand2

book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

result = book_1 <=> book_2
puts result

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

puts books

books.reverse!

puts books

# Sort your books in descending order, in-place below


# itérer sur le tableau my_array pour avoir le carré de chaque chiffre 
# stocker les valeurs au carré dans un tableau
# additionner toutes ces valeurs pour avoir le résultat, un seul chiffre

my_array = [1, 2, 3, 4, 5]
my_array_squared = []
my_array_squared = my_array.each { |number| puts sum = number * number }
puts my_array
puts my_array_squared

