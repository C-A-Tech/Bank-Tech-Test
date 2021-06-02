class Account
  attr_reader :balance
  def initialize
    @balance = 0
    @statement = "date || credit || debit || balance "
  end

  def statement
    # below if statment checks if any transactions have been made before this method was called
    if @statement == "date || credit || debit || balance "
      @statement + "\n  ||  ||  || 0 "
    else
      @statement
    end
  end

  def deposit(amount, date)
    @balance+=amount
    @statement += "\n #{date} || #{amount} || #{nil} || #{@balance} " 
  end


end