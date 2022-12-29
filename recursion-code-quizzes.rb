# Define a recursive function that finds the
# factorial of a number
def factorial (n)
  if n <= 1
    return 1
  else
    return n * (factorial n-1)
  end
end

# define a recursive function that returns true
# if a string is a palindrome and false otherwise
def palindrome (st)
  if st.length == 0 || st.length == 1
    return true
  else
    if st[0] == st[-1]
      palindrome(st[1..-2])
    else
      false
    end
  end
end

# define a recursive function that takes an argument
# n and print "n bottles of beer on the wall", "(n-1)
# bottles of beer on the wall",..."no more bottles of
# beer on the wall
def bottles_on_the_wall(n)
  if n == 0
    puts "No more bottles of beer on the wall."
  else
    puts "#{n} bottles of beer on the wall."
    bottles_on_the_wall n-1
  end
end
bottles_on_the_wall 10

# Define a recusrive function that takes an
# argument n and returns the fibonacci value
# of that position.
# The fibonacci sequence is
# 0, 1, 1, 2, 3, 5, 8, 13, 21,...
# So fib(5) should return 5 and fib(6) should
# return 8
def fibonacci (n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return (fibonacci n-1) +
           (fibonacci n-2)
  end
end

puts fibonacci 5
puts fibonacci 6

# Define a recusive function that flattens an array.
# The method should convert [[1, 2],[3, 4]] to
# [1,2,3,4]
def flatten (array, result = [])
  array.each do |element|
    if element.kind_of?(Array)
      flatten(element, result)
    else
      result << element
    end
  end
  result
end

p flatten([[1,2],[3,4]])

# Use the roman_mapping hash to define a recursive method
# that converts an integer to a Roman numeral.
roman_mapping = {
  1000 => "M",
  900  => "CM",
  500  => "D",
  400  => "CD",
  100  => "C",
  90   => "XC",
  50   => "L",
  40   => "XL",
  10   => "X",
  9    => "IX",
  5    => "V",
  4    => "IV",
  1    => "I"
}

def integer_to_roman(roman_mapping, number, result = "")
  return result if number == 0
  roman_mapping.keys.each do |divisor|
    quotient, modulus = number.divmod(divisor)
    result << roman_mapping[divisor] * quotient
    return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end    
