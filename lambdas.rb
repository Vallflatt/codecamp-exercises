#lambdas are objects, like procs != blocks 
#almost identical to procs

# define a lambda: lambda { |param| block }

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda { |param| param.to_sym }

# Write your code above this line!
symbols = strings.collect(&symbolize)
puts symbols

#diff between lambdas and procs: l check the number of arguments passed 
#to it. Proc will ignore unexpexted arguments and assign  nil to any that are 
#missing, l will return an error.
#when a lambda returns, it passes control back to the calling method
#when a proc returns, it does so immediately, without going back to the calling 
#method

def batman_ironman_proc
    victor = Proc.new { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
end
  
puts batman_ironman_proc
  
 def batman_ironman_lambda
    victor = lambda { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
end
  
puts batman_ironman_lambda

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda { |parameter| parameter.is_a? Symbol }
symbols = my_array.select(&symbol_filter)
puts symbols