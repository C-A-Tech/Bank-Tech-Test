require "account"

class Statement
  def initialize(transactions)
    @transactions = transactions
    @opening_statment = "date || credit || debit || balance "
  end

  def print
    @opening_statment + @transactions
  end
end