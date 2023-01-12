#original

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes_a(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  return Prime.first n
end

first_n_primes_a(10)

# refactored

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
    return "n must be an integer" if !(n.is_a? Integer)
    return "n must be greater than 0." if n <= 0
    Prime.first n
end
puts first_n_primes(5)