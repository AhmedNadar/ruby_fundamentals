def fibo_finder(n)
	return n if (0..1).include? n
	fibo_finder(n-1) + fibo_finder(n-2) if n > 1
end


# one line version

def fibonacci(n)
   n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 ) 
end
puts fibonacci( 10 )
