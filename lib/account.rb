class Account
  attr_reader :balance
  def initialize
    @balance = 0
    @date = ""
    @credit = nil
    @debit = nil
  end

  def statement
    p "date || credit || debit || balance \n #{@date} || #{@credit} || #{@debit} || #{@balance} "
  end

  def deposit(amount, date)
    @balance+=amount
    @date = date
    @credit = amount
  end
end