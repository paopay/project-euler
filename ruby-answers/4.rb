# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# method to check if number is a palindrome
def is_palindrome?(number)
	number.to_s == number.to_s.reverse
end

def find_largest_palindrome
	numbers = (100..999).to_a.reverse
	max = 0
	a = 0
	b = 0
	count = 0

	numbers.each do |num|
		numbers.each do |num2|
			count += 1
			temp = num * num2

			if is_palindrome?(temp) && temp > max
				p temp
				max = temp
				a = num
				b = num2
			end

		end
	end
	p count
	p a
	p b
	max
end

# p find_largest_palindrome


def list_products(min, max)
  products = []
  min.upto(max) {|a| a.upto(max) {|b| products << (a * b)}}
  return products
end

 list_products(100,999)
