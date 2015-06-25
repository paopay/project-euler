# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def find_factors(number)
	# start with lowest prime number
	integer = 2

	# make sure integer doesn't exceed the actual number
	while integer <= number do
		# integer will be returned when if it is a factor of number
		return integer if number % integer == 0

		# if integer is not a factor move to next integer
		integer += 1
	end
end

def get_largest_factor(number)
	factor = find_factors(number)

	# base case 
	# factor will be returned when it cannot 
	# be divided by any other number aside from itself
	return factor if number / factor == 1

	# run method again to find next factor with reduced number
	get_largest_factor(number/factor)
end

p get_largest_factor(600851475143)