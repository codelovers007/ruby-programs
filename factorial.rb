# Find out factorial of the given number

def fact(factoria)
	result = 1
	(result..factoria).map{|num| result*=num}
	result
end

factoria = 10

p fact(factoria)