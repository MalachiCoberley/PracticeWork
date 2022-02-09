# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)
  return false if num_1.even? & num_2.even?
  divs1 = divisors(num_1)
  divs2 = divisors(num_2)
  (divs1 & divs2).empty?
end

def divisors(num)
  output = []

   (2..num).each do |div|
      output << div if num % div == 0
   end

  return output
end


p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
