# frozen_string_literal: true

require 'account'

describe Account do
 
  it 'initialises with a balance of 0' do
    my_acc = Account.new
    expect(my_acc.balance).to eq 0
  end

  it 'stores transactions as an array' do
    my_acc = Account.new
    
  end


  it 'can deposit money' do
    my_acc = Account.new
    my_acc.deposit(500, '02/06/2021')
    expect(my_acc.transactions).to eq [" \n 02/06/2021 || 500.00 || || 500.00"]
  end


  it 'can withdraw money' do
    my_acc = Account.new
    my_acc.deposit(500, '02/06/2021')
    my_acc.withdraw(300, '04/06/2021')
    expect(my_acc.transactions).to eq [" \n 02/06/2021 || 500.00 || || 500.00", " \n 04/06/2021 || || 300.00 || 200.00"]
  end

  it 'cannot withdraw more than balance' do
    my_acc = Account.new
    my_acc.deposit(1000, '02/06/2021')
    expect { my_acc.withdraw(2000, '04/06/2021') }.to raise_error('Insufficient Funds')
  end
  
end
