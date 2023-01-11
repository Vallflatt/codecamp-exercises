def validate_pin(pin)
    /^[0-9]+$/.match?(pin) && (pin.length == 4 || pin.length == 6)
  end
  
  def validate_pin_p(pin)
    /^[0-9]+$/.match?(pin) && [4, 6].include? pin.length
  end
  puts validate_pin("322l")