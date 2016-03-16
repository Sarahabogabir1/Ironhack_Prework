#Write a program that prints the numbers from 1 to 100.
#But for multiples of three print “Fizz” instead of the
#number and for the multiples of five print “Buzz”. For
#numbers which are multiples of both three and five
##FIZZBUZZ

#Forloop

1.upto(100) do |i| 
  if i % 3 == 0 && i % 5 == 0
    puts 'FizzBuzz'
  elsif i % 3 == 0 
    puts 'Fizz'
  elsif i % 5 == 0 
    puts 'Buzz'
  else
    puts i
  end
end

#while loop
i = 1
while 1 <= 100

if i % 3 == 0 && 1 % 5 == 0
	puts "Fizzbuzz"
elsif i % 5 == 0
	puts "Buzz"
elsif i % 3 == 0
	puts "Fizz"
else 
	puts "#{i}"
end 
i = i + 1
end 
	
#finalproduct
for i in 1..100
	result = ""

if i % 3 == 0 
		result = result + "Fizz"
end
if i % 3 == 0 && i % == 0
		result = result + "Buzz"
	end
if i > 9 && i < 20
	result = result + "Bang"
	end
if result == ""
	puts i 
else
	puts "#{result}"
end 
end




