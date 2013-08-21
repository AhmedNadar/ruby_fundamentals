def happy_number?(a)
  10.times do
    a = a.to_s.chars.map { |x| x.to_i ** 2 }.inject(:+)
    return true if a == 1
   end
  false
end


def happyn_number?(number)
	previous_number = []

	# take a number - DONE

	while number != 1
		#split  into separate digits
		digits  = number.to_s.split("")

		# convert each digit to a integer and squar each digit
		digits.map! { |digit| digit.to_i ** 2 }

		# number the squares to get a new number 
		number = digits.inject(0) {|sum, i| sum + i}
		if previous_number.include?(number)
			return false
		end
		previous_number << number

		#rinse and repeeat
	end
	return true
end

p happyn_number?(58758764)