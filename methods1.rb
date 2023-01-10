def alphabetize(arr, rev=false)
    rev ? arr.sort.reverse : arr.sort
end

numbers = [5,10,28,2,3]

puts alphabetize(numbers, true)