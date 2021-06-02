class Account
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def statement(date)
    p "date || credit || debit || balance\n02/06/2021 || || || 0 "
  end
end