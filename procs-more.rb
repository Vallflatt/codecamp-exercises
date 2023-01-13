#building a block

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |items| items.is_a? Integer }
puts ints

#building a proc and pass it to a method

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |number| number < 100 } 
youngsters = ages.select(&under_100)
puts youngsters