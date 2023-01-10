print "Please submit a phrase "
user_input = gets.chomp.downcase

if user_input.include?("s") || user_input.include?("ce") || user_input.include?("ci") || user_input.include?("cy")
  user_input.gsub!(/s/, "th")
  user_input.gsub!(/ce/, "the")
  user_input.gsub!(/ci/, "thi")
  user_input.gsub!(/cy/, "thy")

  puts "this is your thtring : #{user_input}"
else print "thith phrathe doeth not work, thorry"
end
