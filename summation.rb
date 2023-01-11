def summation(num)
    1.upto(num).reduce(0){ |total, n| total + n }
  end
  
  puts summation(5) # 1+2+3+4+5 = 15
  
  #other way to do it: 
  def summation(num)
      (1..num).reduce(:+)
  end