# used like text.split(" ")

puts "Please enter your text"
words = gets.chomp.downcase.split(" ")
puts "Please enter the redacted word"
redact = gets.chomp.downcase.split(" ")

redacted = ""
words.each do |word|
  if redact.include? word
  redacted += "REDACTED "
  else
  redacted += word + " "
  end
end  

print redacted