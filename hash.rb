# hashes are like js objects, collection of key-value pairs
# keys are assigned values with "=>"
# creating an empty hash with Hash.new: my_array = Hash.new, equal as my_hash = {}


hash = {
    "key1" => "value1",
    "key2" => "value2",
    "key3" => "value3"
}

print hash["key1"]

pets = Hash.new
pets["Virginie"] = "cat"
print pets["Virginie"]

friends = ["Azmina", "Léal", "Myriam"]

family = {"Claude" => "Papa",
    "Myriam" => "Maman",
    "Régis" => "frère", 
    "Bibi" => "chat",
    "Oana" => "nièce",
    "Ariane" => "belle-soeur",
}
# when iterating over hashes, you need 2 placeholder variables to represent each key/value
# when iterating over arrays, one placeholder variable to represent each value

family.each { |x, y| puts "#{x}"}

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array|
    sub_array.each do | y | 
     puts y 
    end
  end

s.each { |sub_array| sub_array.each { | y | puts y } }  