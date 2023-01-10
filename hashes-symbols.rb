breakfast = {
    "bacon" => "tasty",
    "eggs" => "tasty",
    "oatmeal" => "healthy", 
    "OJ" => "juicy"
  }
  
  # hash litteral construction : new_hash = {"bacon" => "tasty"}
  # hash constructor notation : new_hash = Hash.new 
  
  breakfast.each do |item, adjective|
    puts breakfast[item]
    
  end
  
  symbols = []

  breakfast.each { |_key, item| symbols.push(item.intern) }

  print symbols


  # symbols: != strings, a symbol is unique
  # :symbol.to_s to convert to string, "string".to_sym to convert to a symbol
  # .intern idem to convert string to symbol
  # since Ruby 1.9, symbols are written symbol: and not :symbol anymore
  # hashes without => hash rocket like

movies = {
    Gone: "good film",
    Bibi: "good cat",
}

print movies

movies.each_key { |key| puts key}
movies.each_value { |value| puts value}