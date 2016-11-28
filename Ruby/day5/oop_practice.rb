# class Person

# 	attr_accessor :name, :age 
# 	attr_reader :dob

	

# 	def initialize(name, age, dob)
# 		@name = name
# 		@age = age
# 		@dob = dob
	

# 	end	



# 	# def name
# 	# 	@name
# 	# end
	
# 	# def age
# 	# 	@age	
# 	# end	


# 	def birthday
# 		@age +=1
# 	end	

	

# 	def change_name(new_name)
# 		@name = new_name
# 	end
	


# end	


# my_profile = Person.new("Heather", 42, "JUL15")

# my_other_profile = Person.new("Andrew", 14, "NOV23")

# puts "My name is #{my_profile.name} and I am #{my_profile.age} years old"


# puts "My son's name is #{my_other_profile.name}  and he is #{my_other_profile.age}."

# my_profile.change_name("Lynn")

# my_profile.birthday

# puts "My new name is #{my_profile.name}."
# puts "I just had a birthday!  I am now  #{my_profile.age} years old!"

# puts "My date of birth is #{my_profile.dob}"



#*****************************************************#

# class User
# end




#*****************************************************#

class Pet

	attr_accessor :animal, :sound

	def initialize (animal, sound)
		@animal = animal
		@sound = sound
	end	

end





animal1 = Pet.new("cat", "meow")
animal2 = Pet.new("dog", "woof")


puts " I have a #{animal1.animal} and it says '#{animal1.sound}' "

puts "I also have a #{animal2.animal} and it say '#{animal2.sound}.'"




# #*****************************************************#
# class Product

# 	attr_accessor :name, :quantity

# 	def initialize(name, quantity)
# 		@name = name
# 		@quantity = quantity

# 	end	


#  def add_quantity

#  	@quantity +=1

#  end	



#  def sub_quantity

#  	@quantity -=1

#  end	


# end


# my_product = Product.new("Tables", 10)

# puts "I have #{my_product.name}.  I have #{my_product.quantity} on hand."


# my_product.sub_quantity

# puts "Someone bought a table!  I now have #{my_product.quantity} on hand!"








