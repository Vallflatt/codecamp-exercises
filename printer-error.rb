# write a function printer_error that will return the error rate of the printer as a string "0/14"
# takes only strings greater or equal to one
# errors are characters not from n to z


def printer_error(s)
    printer_str = s.split("").select{ |letter| letter[/[^a-mA-M]/] }.length
    "#{printer_str}/#{s.length}"
end

puts printer_error("aaabbbbhaijjjmnopqr") 

#better way to do it

def printer_error_1(s)
    "#{s.count('n-z')}/#{s.length}"
end
puts printer_error_1("aaabbbbhaijjjm") 