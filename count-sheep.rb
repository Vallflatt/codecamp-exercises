def countSheeps(array)
  array.select { |presence| presence == true }.length
end

puts countSheeps([true,  true,  true,  false,
  true,  true,  true,  true ,
  true,  false, true,  false,
  true,  false, false, true ,
  true,  true,  true,  true ,
  false, false, true,  true ])

#shorter, .count method returns the number of elements in the array and can find the 
#total of a particular element in the array
  
def countSheeps_1(array)
  array.count(true)
end

puts countSheeps_1([true,  true,  true,  false,
  true,  true,  true,  true ,
  true,  false, true,  false,
  true,  false, false, true ,
  true,  true,  true,  true ,
  false, false, true,  true ])
