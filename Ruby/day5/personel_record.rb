class Employee
	attr_accessor :name, :role, :location

	def initialize(name, role, location)
		@name = name
		@role = role
		@location = location
	end
	

	def transfer_location(new_location)
		@location = new_location	
	end
	
	def transfer_role(new_role)
		@role = new_role
	end	

end	


employees =[] # this is where we will store out employee records.  It will pass through all methods as a parameter.
count = 0

def main(employees, count)

	puts "Welcome to Creighton Co."
	puts "Please enter an option below"
	puts "******************************"	
	puts "1. Create Employee"
	puts "2. Transfer Employee Role"
	puts "3. Transfer Employee Location"
	puts "4. Exit System"

	choice = gets.chomp.to_i


	case choice #each choice calls a different method
		when 1
			count = 0
			create_employee(employees,count)
		when 2
			count = 0
			transfer_employee(employees, count)	
		when 3 
			count = 0
			transfer_location(employees, count)	
		when 4
			puts "You have exited the Employee Records."
		else
		count +=1
			if count < 3
				puts "Invalid entry!  Please try again!"
				main(employees, count)
			else
				puts "Sorry, please contact human resources for help."
			end		
	end		
end

def create_employee(employees, count)
	puts "Create Employee Record -->"
	puts "Please enter the employee's name:"
	name = gets.chomp.upcase
	puts "Please enter the employee's role:"
	role = gets.chomp.upcase
	puts "Please enter the employee's location:"
	location = gets.chomp.upcase

	new_employee = Employee.new(name,role,location)
	employees.push(new_employee)
	puts "Employee #{new_employee.name} has been created."

	main(employees, count)
end	



def transfer_employee(employees, count)

	current_employee = []
	found = false

	puts "Transfer Employee -->"
	puts "Enter Employee Name:"
	name = gets.chomp.upcase
	puts "Enter employee's current role:"
	role = gets.chomp.upcase
	

	employees.each do |e|
		if e.name == name && e.role == role
			current_employee = e
			found = true
		end	
	end	



	if found == true
		puts "#{current_employee.name} has been found. They are currently working in #{current_employee.location} as a #{current_employee.role}."
		puts "Enter employee's new role:"
		new_role = gets.chomp.upcase

		current_employee.transfer_role(new_role)
		puts "The employee's role will be transferred to #{current_employee.role}."
		count = 0
		main(employees, count)
	else
		if count < 3
			count +=1
			puts "Employee Record not found. Please try again."
			transfer_employee(employees,count)
		else
		puts "Employee not found after #{count+1} tries.  Please contact human resources."
		end
	end	


end	



def transfer_location(employees, count)
	current_employee = []
	found = false

	puts "Transfer Employee -->"
	puts "Enter Employee Name:"
	name = gets.chomp.upcase
	puts "Enter employee's current location:"
	location = gets.chomp.upcase
	

	employees.each do |e|
		if e.name == name && e.location == location
			current_employee = e
			found = true
		end	
	end	



	if found == true
		puts "#{current_employee.name} has been found. They are currently working in #{current_employee.location} as a #{current_employee.role}."
		puts "Enter employee's new location:"
		new_location = gets.chomp.upcase

		current_employee.transfer_location(new_location)
		puts "The employee's location will be transferred to #{current_employee.location}."
		count = 0
		main(employees, count)
	else
		if count < 3
			count +=1
			puts "Employee Record not found. Please try again."
			transfer_employee(employees,count)
		else
		puts "Employee not found after #{count+1} tries.  Please contact human resources."
		end
	end	

end	


system "clear"
main(employees,count)








