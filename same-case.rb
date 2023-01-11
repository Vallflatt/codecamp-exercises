=begin
Write a function that will check if two given characters are the same case.

    If either of the characters is not a letter, return -1
    If both characters are the same case, return 1
    If both characters are letters, but not the same case, return 0
=end

def same_case(a, b)
    if (a.match(/[A-Z]/) && b.match(/[A-Z]/)) || (a.match(/[a-z]/) && b.match(/[a-z]/))
        return 1
    elsif (a.match(/[A-Z]/) && b.match(/[a-z]/)) || (a.match(/[a-z]/) && b.match(/[A-Z]/))
        return 0
    else
        return -1
  end
end

puts same_case("A", "9")