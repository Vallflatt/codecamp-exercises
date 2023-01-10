s_sound = {
    "s" => "th",
    "ce" => "the", 
    "ci" => "thi",
    "cy" => "thy",
}

def ask()
    print "Please submit a phrase "
    user_input = gets.chomp
    return user_input.length <= 0 ? ask() : user_input
end 

def convert(input, sounds)
    #converted = input
    #for key in sounds.keys do
    #    converted.gsub!(/#{key}/, sounds[key])
    #end
    #return converted
    sounds.keys.reduce(input) {|acc, key| acc.gsub(/#{key}/i, sounds[key])}
end 

user_input = ask()
converted = convert(user_input,s_sound)

if user_input != converted
    puts "This is your string: #{converted}"
else
    puts "Sorry, there are no '#{s_sound.keys.join('" or "')}' in your statement"
    
end
