# {} in Ruby are interchangeable with do / end (to open a block and close it)

# like in the infinite loop : loop { print "hello world" }  

num = 1
loop do
    num += 1 
    puts "Hello world" 
    break if num == 6
end
