# frozen_string_literal: true

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date)
    @balance += amount
    @transactions << " \n #{date} || #{amount} || || #{@balance}"
  end

  def withdraw(amount, date)
    raise 'Insufficient Funds' if @balance < amount

    @balance -= amount
    @transactions << " \n #{date} || || #{amount} || #{@balance}"
  end
end
