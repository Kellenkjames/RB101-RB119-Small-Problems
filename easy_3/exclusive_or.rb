# Exclusive Or

=begin

* P - [Understanding the] Problem

Problem: Write a method named `xor` that takes two arguments, and returns `true` if exactly one of its arguments is truthy, `false` otherwise.

input: two booleans
output: boolean
rules:
        - Explicit Requirements:
          - Method will take two arguments
          - Returns `true` if exactly one of its arguments is truthy
          - False otherwise

        - Implicit Requirements:
          - Return a boolean result (not a truthy/falsey value)

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Define a method that accepts two arguments (value1, value2):
  - return true if value1 && !value2
  - return true if value2 && !value1
  - false
- end 

__________________________________________________

=end

#_________________________________________________

#* C - Code

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

