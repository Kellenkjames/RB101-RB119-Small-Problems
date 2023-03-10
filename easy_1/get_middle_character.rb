# Get Middle Character

=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

input: string
output: string
rules:
        - Explicit Requirements:
          - Method takes a non-empty string argument
          - Returns the middle characters of the argument
          - If the argument has an odd length
            - Return exactly one character
          - Otherwise, argument has an even length
            - Return exactly two characters

        - Implicit Requirements:
            - Argument must be a non-empty string

__________________________________________________

* E - Examples / Test Cases

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Initialize variable named middle_char_index_one and assign to string.length / 2 
- Initialize variable named middle_char_index_two and assign to (string.length / 2) - 1
- If string has an odd length:
  - string[middle_char_index_one]
- Else
  - string[middle_char_index_two] + string[middle_char_index one]
  end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def center_of(string)
  middle_char_index_one = string.length / 2
  middle_char_index_two = (string.length / 2) - 1
  
  if string.length.odd?
    string[middle_char_index_one]
  else
    string[middle_char_index_two] + string[middle_char_index_one]
  end

end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'