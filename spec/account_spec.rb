require 'account'

describe Account do
  context "creating a new account" do
    it "initialises with a balance of 0" do 
      my_acc = Account.new
      expect(my_acc.balance).to eq 0
    end

    it "requesting a statement shows a balance of 0 and a date" do
      my_acc = Account.new
      expect(my_acc.statement("02/06/2021")).to eq("date || credit || debit || balance\n02/06/2021 || || || 0 ")
    end

  end


end