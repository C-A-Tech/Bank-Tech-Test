require 'statement'

describe do
  let(:account){ double("Account")}
  it "returns a single transaction" do
    allow(account).to receive(:transactions).and_return("\n 02/06/2021 || 500.00 || || 500.00" )

    statement = Statement.new(account.transactions)
    expect(statement.print).to eq("date || credit || debit || balance \n 02/06/2021 || 500.00 || || 500.00")
  end

end