#syntax of inheritance in Ruby class < Superclass
#super: to call for a method or attributes of a superclass
#there can be only one superclass, but instances can inherit from several superclasses 
#with "mixins"

class Application
  def initialize(name)
    @name = name
    
  end
end

class MyApp < Application
  def initialize()
    
  end
end

class Creature #class construction (Parent or Superclass)
  def initialize(name) #instance construction
    @name = name #instance parameter construction
  end
  
  def fight #function definition
    return "Punch to the chops!"
  end
end

class Dragon < Creature #inheritance from Creature (subclass or derived class)
  def fight #overriding fight function with a new version
    puts "Instead of breathing fire..."
    super #to access the method with the same name in the base or superclass
  end
end

puts fight

class Message #Superclass
  @@messages_sent = 0 #class variable
  def initialize(from, to) #initialize method with 2 arguments to construct instance
    @from = from #instance variable  
    @to = to #instance variable
    @@messages_sent += 1 
  end
end

class Email < Message #class inherits from superclass Message
 def initialize(from, to)
  super #calls the initialize method in the superclass Message
 end
end

my_message = Message.new("Lausanne", "eternity")