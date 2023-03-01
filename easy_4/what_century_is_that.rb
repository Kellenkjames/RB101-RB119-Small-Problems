=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number. New centuries begin in years that end with `01`. So, the years 1901-2000 comprise the 20th century.

input: Integer
result: String
rules:
        - Explicit Requirements:
          - Method takes a year as input and returns the century
          - Return value should be a string that begins with century number
          - Return value should be a string that ends with:
            - st -->  1st
            - nd --> 2nd
            - rd --> 3rd
            - th --> 4th
          - New centuries begin in years that end with `01`

        - Implicit Requirements:
          - The input doesn't determine the century year by default.
            
        - Clarifying Questions:
          - Century defines the stat and end years as inclusive?

__________________________________________________

* E - Examples / Test Cases

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm:

# Mini-Problem: Determine the century number first (without the ordinals: 1st, 2nd, 3rd, and 4th):

Base:
  001 - 100:   1
  101 - 200:   2
  201 - 300:  3
  301 - 400:  4
  401 - 500:  5
  501 - 600:  6
  601 - 700:  7
  701 - 800:  8
  801 - 900:  9
  901 - 1000: 10

  1001 - 1100: 11
  1101 - 1200: 12
  1201 - 1300: 13
  1301 - 1400: 14
  1401 - 1500: 15
  1501 - 1600: 16
  1601 - 1700: 17
  1701 - 1800: 18
  1801 - 1900: 19
  
  1901 - 2000: 20
  2001 - 2100: 21
  2101 - 2200: 22
  .....

Step 1: We need to determine the century number based on the input:

#* Create helper method: Get the base values first: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

def find_century(year)
  if year.between?(1, 100)
    century = '1'
  elsif year.between?(101, 200)
    century = '2'
  elsif year.between?(201, 300)
    century = '3'
  elsif year.between?(301, 400)
    century = '4'
  elsif year.between?(401, 500)
    century = '5'
  elsif year.between?(501, 600)
    century = '6'
  elsif year.between?(601, 700)
    century = '7'
  elsif year.between?(701, 800)
    century = '8'
  elsif year.between?(801, 900)
    century = '9'
  elsif year.between?(901, 1000)
    century = '10'
  end
end

Step 2: Use helper method from above to determine century:

year_str = year.to_s # 1052 => '1052'

- if year_str.size.between?(1, 3) || year == 1000
  find_century(year)
- elsif year_str.size == 4 && !year_str.end_with?('00')
  year_substring = year_str.slice(0, 2).to_i
  year_substring += 1
  year_substring.to_s
- elsif year_str.size == 4 && year_str.end_with?('00')
  year_str.slice(0, 2)
- elsif year_str.size == 5 && !year_str.end_with?('00')
  year_substring = year_str.slice(0, 3).to_i
  year_substring += 1
  year_substring.to_s
- elsif year_str.size == 5 && year_str.end_with?('00')
  year_str.slice(0, 3)
end

Step 3: Determine the ordinal numbers

Possible Values: st, nd, rd, or th
Numbers ending in: 1, 2, 3, 4, 5, 6, 7, 8, 9

def superscript_ordinals(century)
  if century(year).start_with?('1') && !century(year).end_with?('1')
    str = 'st'
  elsif century(year).end_with?('02')
    str = 'nd'
  elsif century(year).start_with?('3')
    str = 'rd'
  elsif century(year).end_with?('1', '2', '3', '4', '5', '6', '7', '8', '9')
    str = 'th'
  end

end
__________________________________________________

=end

#_________________________________________________

#* C - Code

def find_century(year)
  if year.between?(1, 100)
    century = '1'
  elsif year.between?(101, 200)
    century = '2'
  elsif year.between?(201, 300)
    century = '3'
  elsif year.between?(301, 400)
    century = '4'
  elsif year.between?(401, 500)
    century = '5'
  elsif year.between?(501, 600)
    century = '6'
  elsif year.between?(601, 700)
    century = '7'
  elsif year.between?(701, 800)
    century = '8'
  elsif year.between?(801, 900)
    century = '9'
  elsif year.between?(901, 1000)
    century = '10'
  end
end

def superscript_ordinals(year)
  if year.end_with?('1') && !year.end_with?('11')
    ordinal = 'st'
  elsif year.end_with?('2') && !year.end_with?('12')
    ordinal = 'nd'
  elsif year.end_with?('3') && !year.end_with?('13')
    ordinal = 'rd'
  elsif year.end_with?('0', '1', '2', '3', '4', '5', '6', '7', '8', '9')
    ordinal = 'th'
  end
end

def century(year)
  year_str = year.to_s # 1052 => '1052'

  # Design Pattern: 
    # When year ends in '00' slice and return range of elements depending on the size of input. 
    # When year doesn't end in '00' , slice and return range of elements --> convert to integer --> add 1 to the leading integer (depending on the size of the input).

  # Example Years: 5, 256, 1000, etc.
  if year_str.size.between?(1, 3) || year == 1000
    result = find_century(year)
    result += superscript_ordinals(result)
  # Example Years: 1052, 1805, etc.
  elsif year_str.size == 4 && !year_str.end_with?('00')
    year_substring = year_str.slice(0, 2).to_i
    year_substring += 1
    result = year_substring.to_s
    result += superscript_ordinals(result)
  # Example Years: 2000, 3000, etc.
  elsif year_str.size == 4 && year_str.end_with?('00')
    result = year_str.slice(0, 2) 
    result += superscript_ordinals(result)
  # Example Years: 10103, 31253, etc. 
  elsif year_str.size == 5 && !year_str.end_with?('00')
    year_substring = year_str.slice(0, 3).to_i
    year_substring += 1
    result = year_substring.to_s
    result += superscript_ordinals(result)
  # Example Years: 40100, 61200, etc.
  elsif year_str.size == 5 && year_str.end_with?('00')
    result = year_str.slice(0, 3)
    result += superscript_ordinals(result)
  end

end

# Examples / Test Cases:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
