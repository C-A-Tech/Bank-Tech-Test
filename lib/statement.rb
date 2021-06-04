require_relative "account"

class Statement
  def initialize(transactions)
    @opening_statment = "date || credit || debit || balance"
    @transactions = ""
    transactions.each{ |transaction|  @transactions += transaction }
  end

  def print
    @opening_statment + @transactions
  end
end