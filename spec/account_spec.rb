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

  context "deposting" do
    it "can deposit money" do
      my_acc = Account.new
      my_acc.deposit(500, "02/06/2021")
      expect(my_acc.statement).to eq("date || credit || debit || balance \n 02/06/2021 || 500 ||  || 500 ")
    end

    it "statement shows multiple deposits" do
      my_acc = Account.new
      my_acc.deposit(500, "02/06/2021")
      my_acc.deposit(700, "03/06/2021")
      expect(my_acc.statement).to eq("date || credit || debit || balance \n 02/06/2021 || 500 ||  || 500 \n 03/06/2021 || 700 ||  || 1200 ")
    end
  end

  context "withdrawing" do
    it "can withdraw money" do
      my_acc = Account.new
      my_acc.deposit(500, "02/06/2021")
      my_acc.withdraw(300, "04/06/2021")
      expect(my_acc.statement).to eq("date || credit || debit || balance \n 02/06/2021 || 500 ||  || 500 \n 04/06/2021 ||  || 300 || 200 ")
    end

    it "statement shows multiple withdrawls" do
      my_acc = Account.new
      my_acc.deposit(1000, "02/06/2021")
      my_acc.withdraw(300, "04/06/2021")
      my_acc.withdraw(200, "05/06/2021")
      expect(my_acc.statement).to eq("date || credit || debit || balance \n 02/06/2021 || 1000 ||  || 1000 \n 04/06/2021 ||  || 300 || 700 \n 05/06/2021 ||  || 200 || 500 ")
    end
    
    it "cannot withdraw more than balance" do
      my_acc = Account.new
      my_acc.deposit(1000, "02/06/2021")
      expect { my_acc.withdraw(2000, "04/06/2021") }.to raise_error("Insufficient Funds")
    end
  end

end