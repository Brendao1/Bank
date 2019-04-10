require './lib/bank'

RSpec.describe "A bank account" do

    it "creates a bank account with balance 0" do
        b = Bank.new()
        expect(b.account.balance).to eq 0
    end

end


