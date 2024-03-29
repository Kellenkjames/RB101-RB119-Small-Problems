# Valid Series?

# The `valid_series?` method checks whether a series of numbers is valid. For the purposes of this exercise, a valid series of numbers must contain exactly three odd numbers. Additionally, the numbers in the series must sum to 47.

# Unfortunately, our last test case is not returning the expected result. Why is that?

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  # odd_count = 3 ? true : false
  odd_count == 3
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])          # should return true
p valid_series?([1, 12, 2, 5, 16, 6])                 # should return false
p valid_series?([28, 3, 4, 7, 9, 14])                # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])          # should return true
p valid_series?([10, 6, 19, 2, 6, 4])                 # should return false

#_________________________________________________

=begin

Problem: Last test case is not returning the expected result

Fix: The local variable `odd_count` is incorrectly using the assignment operator when it should be using an equality operator to check for truthiness.

* Key Concept: We mistakenly performed assignment rather than comparison. `==` performs equality comparison and returns a Boolean, while `=` is used for variable assignment and returns the assigned value. In this case the assigned value was `3`, which will always be evaluated as a truthy condition in our ternary operator.

=end