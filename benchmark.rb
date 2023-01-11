require 'benchmark'
def fake_bin(s)
    s.gsub(/[0-4]/, "0").gsub(/[5-9]/, "1")
end

def fake_bin_map(s)
    s.split('').map{|val| val.to_i < 5 ? '0' : '1'}.join('')
end

gsub_time = Benchmark.realtime do
  100_000.times { fake_bin("366058562030849490134388085") }
end

map_time = Benchmark.realtime do
  100_000.times { fake_bin_map("366058562030849490134388085") }
end

puts "Gsub time: #{gsub_time} seconds."
puts "Map time: #{map_time} seconds."