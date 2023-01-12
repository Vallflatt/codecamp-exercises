# write a function printer_error that will return the error rate of the printer as a string "0/14"
# takes only strings greater or equal to one
# errors are characters not from n to z

=begin 
def printer_error(s)
    total = s.length.to_s
    printer_str = s.split("").select{ |letter| letter[/[^a-mA-M]/] }.length.to_s
    return "#{printer_str}/#{total}"
end

 puts printer_error("aaabbbbhaijjjm") 
=end

def printer_error(s)
    "#{s.count('n-z')}/#{s.length}"
end
puts printer_error("aaabbbbhaijjjm") 