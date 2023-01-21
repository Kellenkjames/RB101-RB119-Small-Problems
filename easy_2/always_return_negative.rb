# Always Return Negative

=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

input: integer
output: boolean
rules:
        - Explicit Requirements:
          - Method takes a number as an argument
          - If the argument is a positive number, return the negative of that number
          - If the number is 0 or negative, return the original number

        - Implicit Requirements:
          - No floating point numbers

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- If the number is positive
  - return the negative of that number
- Elsif number is 0 || number is negative
  - return the orginal number
-end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def negative(number)
  if number.positive?
    -number
  elsif number == 0 || number.negative? 
    number
  end
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
