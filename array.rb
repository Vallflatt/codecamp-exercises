# my_array [1, 2, 3, 4, 5]
# .each iterator: loop is the simplest, but the least powerful iterator. 
# .each can apply an expression to each element of an object, one at a time
# object.each { |item|
# do something 
#}
# also: object.each do |item|
# do something
# end

=begin my_array = [1,2,3,4,5]

my_array.each do |x|
    x += 10
    print "#{x}"
end 
=end

=begin
numbers = [1, 2, 3, 4, 5]

numbers.each { |item| puts item }

numbers = ["a", "b", "c", "d", "e"]

numbers.each do |item|
    puts item
end
=end

odds = [1, 3, 5, 7, 9]

odds.each do |item|
    item = item * 2
    print "#{item}"
end

multi_d_array = [[1, 2, 3, 4],[10, 11, 12, 13],[20, 21, 22, 23],[30, 31, 32, 33]]

multi_d_array.each { |x| puts "#{x}\n" }

print multi_d_array[3][0]