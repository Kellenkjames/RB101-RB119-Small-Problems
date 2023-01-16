# Bannerizer

=begin

* P - [Understand the] Problem

PROBLEM: Write a method that will take a short line of text, and print it within a box.

input: string
output: string (within a box)
rules:
        - Explicit Requirements:
          - Method will take a short line of text
          - Print it within a box

        - Implicit Requirements:
          - The input should always fit in your terminal window

        - Clarifying Questions:
          - Do we need to worry about any other objects that are not strings? 

__________________________________________________

* E - Examples / Test Cases

print_in_box('')
+--+
|  |
|  |
|  |
+--+

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Create the structure of the box using print statements
  - Interpolate the text within the puts statement

__________________________________________________

=end

#_________________________________________________

#* C - Code

def print_in_box(text)
  puts ""
  puts "+---+"
  puts " "
  puts "|   |"
  puts " "
  puts "|   |"
  puts " "
  puts "|   |"
  puts " "
  puts "+---+"
end

print_in_box('')
