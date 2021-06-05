# frozen_string_literal: true

require 'account'
require 'date'

describe Account do
 
  it 'initialises with a balance of 0' do
    my_acc = Account.new
    expect(my_acc.balance).to eq 0
  end

  it 'can deposit money' do
    my_acc = Account.new
    my_acc.deposit(500)
    date = Time.now.strftime("%d/%m/%Y")
    expect(my_acc.transactions).to eq [" \n #{date} || 500.00 || || 500.00"]
  end


  it 'can withdraw money' do
    my_acc = Account.new
    my_acc.deposit(500)
    my_acc.withdraw(300)
    date = Time.now.strftime("%d/%m/%Y")
    expect(my_acc.transactions).to eq [" \n #{date} || 500.00 || || 500.00", " \n #{date} || || 300.00 || 200.00"]
  end

  it 'cannot withdraw more than balance' do
    my_acc = Account.new
    my_acc.deposit(1000)
    date = Time.now.strftime("%d/%m/%Y")
    expect { my_acc.withdraw(2000) }.to raise_error('Insufficient Funds')
  end
  
end
