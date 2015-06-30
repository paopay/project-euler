# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# method to check if number is a palindrome
def is_palindrome?(number)
	number.to_s == number.to_s.reverse
end

# O n^2 solution
# gets all products of every combination of numbers
# checks whether product is a palindrome
# returns largest palindrome
def find_largest_palindrome(min, max)
	# get array of all included numbers
	numbers = (min..max).to_a
	largest_palindrome = 0

	# iterate through all numbers in array
	# num will be the first integer to multiply with
	numbers.each do |num|
		# iterate through numbers again
		# num2 is the second number to multiply with
		numbers.each do |num2|
			temp = num * num2

			# check if product is a palidrome and if it is larger than current largest palindrome
			# set new largest if applicable
			if is_palindrome?(temp) && temp > largest_palindrome
				largest_palindrome = temp
			end

		end
	end

	p	largest_palindrome
end

find_largest_palindrome(100, 999)
