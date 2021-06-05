# frozen_string_literal: true
require 'date'

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    date = Time.now.strftime("%d/%m/%Y")

    @transactions << " \n #{date} || #{'%.2f' % amount} || || #{'%.2f' % @balance}"
  end

  def withdraw(amount)
    raise 'Insufficient Funds' if @balance < amount

    @balance -= amount
    date = Time.now.strftime("%d/%m/%Y")
    @transactions << " \n #{date} || || #{'%.2f' % amount} || #{'%.2f' % @balance}"
  end
end
