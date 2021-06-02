# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @statement = 'date || credit || debit || balance '
  end

  def statement
    # below if statment checks if any transactions have been made before this method was called
    if @statement == 'date || credit || debit || balance '
      "#{@statement}\n nil || nil || nil || 0 "
    else
      @statement
    end
  end

  def deposit(amount, date)
    @balance += amount
    @statement += "\n #{date} || #{amount} || nil || #{@balance} "
  end

  def withdraw(amount, date)
    raise 'Insufficient Funds' if @balance < amount

    @balance -= amount
    @statement += "\n #{date} || nil || #{amount} || #{@balance} "
  end
end
