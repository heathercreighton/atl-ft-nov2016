class Account

	attr_accessor :name, :acct_num, :balance

	def initialize(name,acct_num,balance)
		@name = name
		@acct_num = acct_num
		@balance = balance

	end
	
	def deposit(amount)
		@balance += amount
	end
	
	def withdrawal(amount)
		@balance -= amount
	end		


end	

accounts = []
number_of_accounts = 0


# We want to give our customers the option to do 2 things: create an account, modify an existing account

count = 0
def main(number_of_accounts, accounts, count)



	puts "Welcome to Creighton Bank! "
	puts "Please choose one of the following:"
	puts "**********************************"
	puts "1: Open a new account"
	puts "2: View an existing account"
	puts "3: Exit the banking system"


	choice = gets.chomp.to_i

	if choice == 1
		puts "Let's create your account!"
		create_account(number_of_accounts, accounts)
		count = 0
	elsif choice == 2
		puts "Let's view your account!"
		count = 0
		view_account(number_of_accounts, accounts, count)
	elsif choice == 3
		puts "Exiting system. Thank you for your business."	
	else
		puts "Invalid Entry!, please enter either 1 or 2"
		count +=1

			if count < 3
				main(number_of_accounts, accounts, count)
			else
				puts "You seem to be having issues.  Please call our customer service department."	
			end		
	end		
end	




def create_account(number_of_accounts, accounts)
	count = 0
	system "clear"
	puts "Please enter your name"
	name = gets.chomp.upcase
	puts "Please enter your initial amount"
	amount = gets.chomp.to_f
	number_of_accounts +=1
	acct_num = number_of_accounts
	new_account = Account.new(name, acct_num, amount)
	accounts.push(new_account)

	puts "You account has been created:"
	puts "Name: #{new_account.name}, Account Number: #{
	number_of_accounts}, Amount: #{new_account.balance}"
	main(number_of_accounts, accounts, count)
end



def view_account(number_of_accounts, accounts, count)

	puts "Please enter your name:"
	name  = gets.chomp.upcase
	puts "Please enter your account number:"
	acct_num = gets.chomp.to_i

	found = false
	current_account = ""

	accounts.each do |a|
		if a.name == name && a.acct_num == acct_num
			current_account = a
			found = true
		end
	end	

	if found == true
		puts "We found your account!"
		account_menu(number_of_accounts, accounts, current_account)
	else
		count +=1

		if count < 3
			puts "That account was not found, please try again!"
			view_account(number_of_accounts, accounts, count)	
		else
			puts "Sorry, your account can not be found.  Please contact customer service."
			count = 0
			main(number_of_accounts, accounts, count)
		end	
	end	


end




def account_menu(number_of_accounts, accounts,current_account)


	count = 0
	puts "Please make a selection:"
	puts "****************************"
	puts "1: Check Balance"
	puts "2: Make a deposit"
	puts "3: Make a withdrawal"
	puts "4: Return to Main"

	user = gets.chomp.to_i

	case user
		when 1
			check_balance(number_of_accounts, accounts, current_account)
		when 2
			make_deposit(number_of_accounts, accounts, current_account)
		when 3
			make_withdrawal(number_of_accounts, accounts, current_account)
		when 4 
			main(number_of_accounts, accounts, count)	

		else
			puts "Invalid selection.  Please try again."			
			account_menu(number_of_accounts, accounts, current_account)
	end		

end



def check_balance(number_of_accounts, accounts, current_account)
		puts "Your current balance is #{current_account.balance}."
			account_menu(number_of_accounts, accounts, current_account)

end


def make_deposit(number_of_accounts, accounts, current_account)
		puts "Please enter the amount you'd like to deposit:"
		amount = gets.chomp.to_f
		current_account.deposit(amount)
		puts "Your deposit of #{amount} has been made. \n"
		puts "Your new balance is #{current_account.balance}."
			account_menu(number_of_accounts, accounts, current_account)

end

def make_withdrawal(number_of_accounts, accounts, current_account)
		puts "Please enter the amount you would like to withdraw:"
		amount = gets.chomp.to_f

		if current_account.balance < amount
			puts "INSUFFICIENT FUNDS!  Your account only has #{current_account.balance}.  Please enter an amount less than your balance."
			make_withdrawal(number_of_accounts, accounts, current_account)
		else
			current_account.withdrawal(amount)
			puts "Your withdrawal of #{amount} has been made.  Your new balance is #{current_account.balance}."	
			account_menu(number_of_accounts, accounts, current_account)
		end	




end	


main(number_of_accounts, accounts, count)