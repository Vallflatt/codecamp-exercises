=begin 
ary = [[1,2], [2,4], [3,6]]
a = []
b = []

ary.each { |first, second| a << first; b << second}
puts a
puts b 
=end

def number(bus_stops)
  # Happy Coding
total_enter = []
total_exits = []
bus_stops.each { |enter, exits| total_enter << enter; total_exits << exits }.each 
total_enter.sum - total_exits.sum
end

puts number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]])

# shorter and nicer: 
def number(bus_stops)
	bus_stops.map {|(on,off)| on - off }.reduce(:+)
end
