require 'account'

describe Account do
  context "creating a new account" do
    it "initialises with a balance of 0" do 
      my_acc = Account.new
      expect(my_acc.balance).to eq 0
    end

    it "requesting a statement shows a balance of 0" do
      my_acc = Account.new
      expect(my_acc.statement).to eq("date || credit || debit || balance \n  ||  ||  || 0 ")
    end
  end

  it "can deposit money" do
    my_acc = Account.new
    my_acc.deposit(500, "02/06/2021")
    expect(my_acc.statement).to eq("date || credit || debit || balance \n 02/06/2021 || 500 ||  || 500 ")
  end

  it "statemnt shows multiple deposits" do
    my_acc = Account.new
    my_acc.deposit(500, "02/06/2021")
    my_acc.deposit(700, "03/06/2021")
    expect(my_acc.statement).to eq("date || credit || debit || balance \n 02/06/2021 || 500 ||  || 500 \n 03/06/2021 || 700 ||  || 1200 ")
  end


end