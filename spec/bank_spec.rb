require './lib/bank'

RSpec.describe "it creates a bank account" do
    it "creates a bank account with balance 0" do
        a = Account.new()
        expect(a.balance).to eq 0
    end

    it "a bank object creates an account with balance 0" do
        b = Bank.new()
        # a = Account.new()
        expect(b.account.balance).to eq 0 

    end

end


