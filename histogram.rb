puts "Please enter your text"
text = gets.chomp.downcase

words = text.split(/[" ", "'", "," , ".", ";", ":"]/)
frequencies = Hash.new(0)

words.each do |word, frequency|
    frequencies[word] += 1
end

frequencies = frequencies.sort_by do |word, frequency|
    frequency
end

frequencies.reverse!.each do |word, frequency|
    puts word + " " + frequency.to_s
end

