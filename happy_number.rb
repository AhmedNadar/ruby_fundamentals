def happy_number?(a)
  10.times do
    a = a.to_s.chars.map { |x| x.to_i ** 2 }.inject(:+)
    return true if a == 1
   end
  false
end