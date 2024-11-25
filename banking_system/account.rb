# frozen_string_literal: true

##
# This class is responsible to handle the account info of an user
#
class Account
  attr_reader :holder_name, :number, :balance

  DEFAULT_BALANCE = 10

  def initialize(name)
    @name = name
    @number = generate_account_number
    @balance = DEFAULT_BALANCE
  end

  def deposit(amount)
    @balance += amount
    puts "Your account balance is #{balance}"
  end

  def withdraw(amount)
    if amount > balance
      puts 'Insufficient balance'
    else
      @balance -= amount
      puts "Your account balance is #{balance}"
    end
  end

  private

  def generate_account_number
    "TESTBANK#{rand(1..10_000_000_000)}"
  end
end
