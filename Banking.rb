# Design a class structure for a simple banking system.
 
# The system should support the following functionalities:
 
# Creating new accounts with a 
# unique account number, 
# initial balance, and 
# account holder name.

# Depositing money into an account.

# Withdrawing money from an account (assuming sufficient balance).
# Checking the balance of an account.


# Account table
# account_number
# balance
# name


class Banking
	@@accounts = []

	def initialize(balance = 100, name)
		account_number = @@accounts.empty? ? 123 : @@accounts.last[:account_number] + 1
		@account = { account_number: account_number, balance: balance, name: name }
		@@accounts << @account
		puts "Account created for #{account_number}"
	end

	def deposit(amount)
		@account[:balance] += amount
		puts "Deposited #{@account[:balance]}"
	end

	def withdraw(amount)

		return "Insufficient balance" if @account[:balance] < amount
		@account[:balance] -= amount
		puts "Withdraw #{@account[:balance]}"
	end

	private

	def find_account(account_number)
		@account = @@accounts.select { |account| account[:account_number] == account_number }
	end
end

account = Banking.new('John')
account.deposit(100)
account.withdraw(50)
