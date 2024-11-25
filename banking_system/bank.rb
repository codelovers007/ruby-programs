# frozen_string_literal: true

require './account'
require 'pry'

##
# This class is responsible for the managing the bank features like:
# - Creating an account
# - Withdrawing money from an account
# - Depositing money
# - Checking account balance
#
class Bank
  def initialize
    @accounts = []
  end

  def create_account(name)
    account = Account.new(name)
    @accounts << account
    puts "Your account number is #{account.number}"
    account
  end
end

bank = Bank.new
account = bank.create_account('Deepak')
account.deposit(100.2)
account.withdraw(110.5)
account.withdraw(110.2)