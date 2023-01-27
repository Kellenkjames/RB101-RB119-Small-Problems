# Uppercase Check

=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

input: string
output: boolean
rules:
        - Explicit Requirements:
          - Method takes a string argument:
          - Returns true if all of the alphabetic characters inside the string are uppercse
          - False otherwise

        - Implicit Requirements:
          - Non-alphabetical characters should be ignored
          - Return true if string is empty ('')

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Initialize a variable called new_str:
- remove characters that are non-alphabetic, i.e, 0-9, !, etc. and assign obj to new_str
- new_str == new_str.upcase

__________________________________________________

=end

#_________________________________________________

#* C - Code

def uppercase?(string)
  new_str = string.delete('^a-zA-Z')
  new_str == new_str.upcase
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true