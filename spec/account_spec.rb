# frozen_string_literal: true

require 'account'

describe Account do
 
  it 'initialises with a balance of 0' do
    my_acc = Account.new
    expect(my_acc.balance).to eq 0
  end


  it 'can deposit money' do
    my_acc = Account.new
    my_acc.deposit(500, '02/06/2021')
    expect(my_acc.statement).to eq(
      "date || credit || debit || balance \n 02/06/2021 || 500 || nil || 500 "
    )
  end


  it 'can withdraw money' do
    my_acc = Account.new
    my_acc.deposit(500, '02/06/2021')
    my_acc.withdraw(300, '04/06/2021')
    expect(my_acc.statement).to eq(
      "date || credit || debit || balance \n 02/06/2021 || 500 || nil || 500 \n 04/06/2021 || nil || 300 || 200 "
    )
  end

  it 'cannot withdraw more than balance' do
    my_acc = Account.new
    my_acc.deposit(1000, '02/06/2021')
    expect { my_acc.withdraw(2000, '04/06/2021') }.to raise_error('Insufficient Funds')
  end
  
end
