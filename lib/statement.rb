require_relative "account"

class Statement
  def initialize(transactions)
    @opening_statment = "date || credit || debit || balance"
    @transactions = ""
    transactions.each{ |transaction|  @transactions += transaction }
  end

  def print
    transactions_present?
  end

  private 

  def transactions_present?
    if @transactions == ""
      dont_show_statement
    else
      show_statement
    end
  end

  def show_statement 
    @opening_statment + @transactions
  end
  
  def dont_show_statement
    @opening_statment
  end

end