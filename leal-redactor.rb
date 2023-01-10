def ask_question(question)
  puts question
  return gets.chomp.downcase.split(" ")
end

words = ask_question("Please enter your text")
redact = ask_question("Please enter the redacted word")

#redacted = words.reduce([]) {|acc, word| acc.push(redact.include?(word) ? "REDACTED" : word)}
redacted = words.map {|word| redact.include?(word) ? "REDACTED" : word}

print redacted.join(" ")
