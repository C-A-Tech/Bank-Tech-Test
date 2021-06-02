class Account
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def statement(date)
    p "date || credit || debit || balance\n#{date} || || || #{@balance} "
  end
end