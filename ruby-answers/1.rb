# Multiples of 3 and 5

# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def find_multiples_of_3_and_5_for(number)
  (1..(number-1)).select { |num| num % 3 == 0 || num % 5 == 0}
end

def add_num_in_array(array_of_num)
  array_of_num.reduce(:+)
end

multiples = find_multiples_of_3_and_5_for(1000)
add_num_in_array(multiples)