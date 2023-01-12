#procs are "saved" blocks: blocks cannot be saved into variables
#procs useful to keep code DRY: blocks need to be repeated, procs don't
#define a proc with Proc.new and pass in the block you want to save

cube = Proc.new { |n| n ** 3 }

#then you can pass the proc to a method that would otherwise take a block

puts [1, 2, 3].collect!(&cube)
puts [4, 5, 6].map!(&cube)

#collect and map methods are the same thing
#the & is used to convert the cube proc into a block (since .collect! and map! take blocks)

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new { |float| float.floor }

ints = floats.collect(&round_down)
print ints

#a method that yields to a blocl that is a proc

def greeter
    yield 
end
    
phrase = Proc.new { puts "Hello there!"}
greeter(&phrase)

#calling a proc with .call

hi = Proc.new {puts "Hello!"}
hi.call

#turning symbols to proc with &:

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.collect(&:to_s)

puts strings_array
