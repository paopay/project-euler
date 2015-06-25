 // The prime factors of 13195 are 5, 7, 13 and 29.

 // What is the largest prime factor of the number 600851475143 ?

function findFactors(number) {
	// start with lowest prime factor
	var integer = 2

	// make sure integer doesnt exceed number
	while(integer <= number) {
		// integer is a factor of number if the quotient is another integer
		if(number % integer === 0) {
			return integer;
		};

		// if not a factor move to next integer
		integer++;
	};
};

function getLargestFactor(number) {
	var factor = findFactors(number);

	// base case for recursion
	// return factor only if it is divisible by itself
	// in other words, it is the largest prime factor
	if(number/factor === 1) {
		return factor;
	};

	// don't forget to add 'return' when calling the function again
	// you'll get undefined otherwise
	return getLargestFactor(number/factor);
};

console.log(getLargestFactor(600851475143));