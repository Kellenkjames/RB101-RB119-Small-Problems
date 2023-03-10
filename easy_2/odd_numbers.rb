# Odd Numbers

=begin

* P - [Understanding the] Problem

Problem: Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

input: integers
output: integers
rules:
        - Explicit Requirements:
          - Print all odd numbers from 1 to 99 (inclusive)
          - Each number needs to be on it's own separate line

        - Implicit Requirements:
          - Include the numbers on the outer bounds of the range, i.e., 1 and 99

__________________________________________________

* E - Examples / Test Cases

1
3
5
7
9
...

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Iterate over the range of integers using the each method
  - If number is odd
    - print output
  -end

__________________________________________________


=end

#_________________________________________________

#* C - Code

(1..99).each { |number| puts number if number.odd? }

