#methods are public by default in Ruby
#but needs to be specified if public or private

class ClassName
  public
  def public_method
    
  end
end

#everything after the public keyword through the end of the class definition will
#be public unless we say otherwise. 

#private methods are limited to the object where they are defined. 
#only accessible from other code inside the object
#the private method cannot be called with an explicit receiver
#a receiver is the object the method is called on: object.method

class Dog
  
  def initialize(name, breed)
    @name = name
    @breed = breed              
  end
    
  public
  def bark
    puts "Woof!"
  end

  private 
  def id
    @id_number = 12345
    
  end
    
end

toto = Dog.new("Titi", "cocker")
toto.bark

#attr_reader = used to access an attribute, like an instance variable 
#attr_writer = used to change an attribute, like an instance variable
#replaces the method needed to access attributes like
# def name
#  @name
#  end

class Person
  attr_reader :name
  attr_writer :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end

#attr_accessor = used to read and weite a particular variable (both readable and writable)

