def count_sheep(num)
    sheeps = ""
    1.upto(num) { |n| sheeps += n.to_s + " sheep..." }
    sheeps
end


def count_sheep_p(num)
  1.upto(num).reduce(""){ |acc, iter| acc + "#{iter} sheep..." }
end

puts count_sheep_p(5)