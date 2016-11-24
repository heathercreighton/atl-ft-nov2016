# #method to convert lbs to kilos
# def lbs_to_kilos(weight)
# 	kilos = weight * 2.2 
# end

# puts lbs_to_kilos(30)


# #method to give length of a string
# def string_length(string)
# 	length = string.length
# end

# puts string_length("Heather")	


# #method to give length of a string
# def string_reverse(string)
# 	reverse = string.reverse
# end

# puts string_reverse("Heather")	



# #method to get the quotient and remainder of two given numbers

def get_remainder(num_array)
	num_array.sort!

	quotient = num_array[1]/num_array[0]
	remainder = num_array[1]%num_array[0]

	puts "The quotient of #{num_array[1]} and #{num_array[0]} is #{quotient} and the remainder is #{remainder}."
end

def get_numbers
	puts "Please enter your first integer:"
	numb1 = gets.chomp.to_i
	puts "Please enter your second integer:"
	numb2 = gets.chomp.to_i

	if (numb1.is_a? Integer) && (numb2.is_a? Integer) && (numb1 != 0) && (numb2 !=0)	  
			return numb1, numb2
	else		
			puts "You can not enter a '0' or a letter. Please enter your numbers again."
			get_numbers
	end
end


get_remainder(get_numbers)

