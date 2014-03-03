def fibo_finder(n)
	return n if (0..1).include? n
	fibo_finder(n-1) + fibo_finder(n-2) if n > 1
end


# one line version

def fibonacci(n)
   n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 ) 
end
puts fibonacci( 10 )


# anotehr one liner version
# thanks, http://stackoverflow.com/a/7034591/66493

f = ->(x){ x < 2 ? x : f[x-1] + f[x-2] }
puts f[6] 


# **** sexy way using hash :)
# http://stackoverflow.com/a/6420253/66493

fibonacci = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }

fibonacci[6]  # => 8 
fibonacci[50] # => 12586269025
