def reverse_seq(n)
    #returns an array of integers from n to 1 where n > 0
    rev_array = []

    while n > 0
      rev_array.push(n) 
      n -= 1
    end

    return rev_array

end


def rev_array(n)
    (1..n).to_a.reverse
end
puts rev_array(6)