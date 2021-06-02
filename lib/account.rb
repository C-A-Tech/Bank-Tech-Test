class Account
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def statement
    p "date || credit || debit || balance\n || || || #{@balance} "
  end
end