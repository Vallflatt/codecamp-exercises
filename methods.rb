# methods are defined using the keyword "def" 
# they have 3 parts: 1. header def + name and any argument the method takes
# 2. the body, code block that describes the procedures the method carries out
# 3. end: end keyword
# def method_name
# code to do here
# end
# a method needs to be called in order to work and do anything. You call a method by typing its name. 
# arguments: a method accepts or expects arguments as parameter


def welcome
    puts "Welcome to Ruby"
end

def hello
    puts "Hello World"    
end

welcome
hello

def square(n)
   puts n ** 2
end

square(5)

# splat arguments *
# arguments preceded by a * that tells the program that the method can receive one or more arguments

def what_up(greeting, *friends)
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up?", "Vivi", "Léal", "Bibi")

# return: when you need a value returned, and not to print smth to the console

def method_name(a, b)
    return a + b
end

puts method_name(2, 3)

def greeter(name)
    return "Hello " + name
end

puts greeter("Virginie")

=begin
def by_three?(number)
    if number % 3 == 0 
        return true   
    else 
        return false
    end
end

puts by_three?(25)
=end

def by_three?(number)
    return number % 3 == 0
end

puts by_three?(3)