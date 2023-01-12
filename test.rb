#lambdas are objects, like procs != blocks 
#almost identical to procs
# define a lambda: lambda { |param| block }

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda { |param| param.to_sym }

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols