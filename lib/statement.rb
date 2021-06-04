require_relative "account"

class Statement
  def initialize(account = Account.new)
    @opening_statment = "date || credit || debit || balance"
    @transactions = ""
    account.each{ |transaction|  @transactions += transaction }
  end

  def print
    @opening_statment + @transactions
  end
end