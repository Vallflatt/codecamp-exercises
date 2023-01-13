#name of classes start with capital letters and use CamelCase 
#creating a class: 
#class NameofClass
#function def initialize end
#end
#@name : @ before a variable shows it is an instance variable, attached to the instance 
#of the class

class Person #create the class
    # Set your class variable to 0 on line 3
    @@people_count = 0
    
    def initialize(name) #method needed to boot up each object the class creates
      @name = name
      @@people_count += 1
    end
       
    def self.number_of_instances
    return @@people_count  
    end
end
  
matz = Person.new("Yukihiro")
dhh = Person.new("David")
  
puts "Number of Person instances: #{Person.number_of_instances}"

matz = Person.new("Yukihiro") #creating a new instance of the class

#variables: @ instance @@ class $ global

class MyClass
    $my_variable = "Hello!"
end
  
puts $my_variable
