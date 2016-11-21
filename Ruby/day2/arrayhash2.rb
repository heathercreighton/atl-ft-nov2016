# favorite = "horse"

# animal = ["cat", "dog", "horse", "bat", "mule"]

# animal.each do |a| 

# 	if a == favorite 
# 	 puts "Hey, #{a} is my favorite animal!"
# 	else
# 		puts a 
# 	end	

# end	





##**********************************************************************************#

# animal = ["cat", "dog", "horse", "bat", "mule"]

# animal.each do |a| 

# 	case a
# 		when "cat"
# 			puts "meow"
# 		when "dog"
# 			puts "woof"
# 		when "horse"
# 			puts "neigh"
# 		when "bat"
# 			puts "squeak"
# 		when "mule"
# 			puts "hee-haw"

# 		else 	
# 			puts "I don't know that sound!"
# 	end					

		


# end	




#**********************************************************************************#

# puts "Give me an animal to hear the sound: "
# sound = gets.chomp.downcase


# animal = ["cat", "dog", "horse", "bat", "mule"]

# animal.each do |a| 

# 	 a = sound 
# 			case a
# 				when "cat"
# 					puts "meow"
# 				when "dog"
# 					puts "woof"
# 				when "horse"
# 					puts "neigh"
# 				when "bat"
# 					puts "squeak"
# 				when "mule"
# 					puts "hee-haw"	
# 				else 	
# 					puts "I don't know that sound!"
# 			end
# 			break					  

# end	





#**********************************************************************************#

# my_hash = {"Name" => "Heather", "Age"=>20, "Hometown"=>"Detroit", "Favorite Food"=>"Calamari"}

# my_hash.each do |k,v|
# 	if k == "Name"
# 		puts "My name is #{v}"
# 	elsif k == "Age"
# 		puts "I am #{v} years old."
# 	elsif k == "Hometown"
# 		puts "I am from #{v}."	
# 	elsif k == "Favorite Food"
# 		puts "I love to eat #{v}"
# 	end
# end		
						




#**********************************************************************************#

# #array of numbers
numbers =[]


5.times do
 puts "Give me a number"
 num = gets.chomp.to_i
 numbers.push(num)
end 



sum = 0  #set sum to 0 to add array number
prod = 1 #set prod to 1 to multiply array numbers

numbers.sort!
numbers.each do |n|
	sum += n
	prod *=n
end

puts "The sum of the array elements is #{sum}."
puts "The product of the array elements is #{prod}"
puts "The smallest number in the array is #{numbers.first} and the largest is #{numbers.last}"	








