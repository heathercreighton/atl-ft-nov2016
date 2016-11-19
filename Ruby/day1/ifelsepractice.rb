# puts "Please enter an animal:"
# animal = gets.chomp.downcase

# if animal == "dog"
# 	puts "WOOF!"
# elsif animal == "cat"
# 	puts "MEOW!"

# elsif animal == "cow"
# 	puts "MOO"
# elsif animal == "horse"
# 	puts "neigh!"		

# else
# 	puts "I don't know that sound! No sound for you!"
# end			

#****************************************************************#


# puts "Please enter a number between 1 and 100"
# guess = gets.chomp.to_i

# number = rand(1..100)

# if guess == number
# 	puts "WOW!"

# elsif  ((number - 5) < guess && (number + 5) > guess ) 
#  put "Oh you are so close!"

# else
# 	puts "NOPE! The number is #{number}"	
# end	

#****************************************************************#


# puts "What is your number grade?"

# grade = gets.chomp.to_i

# if grade >= 60
# 	puts "You passed!  Congrats!"

# else
# 	puts "You failed!  See you again next semester!"	
# end	



puts "Please enter an animal:"
animal = gets.chomp.downcase

case animal

	when "dog"
		puts "woof!"
	when "cat"
		puts "meow"
	when "cow"
		puts "moo"
	else
		puts "I don't know that sound!"
end		

















