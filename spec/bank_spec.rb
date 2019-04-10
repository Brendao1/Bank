require './lib/bank'

RSpec.describe "A bank account" do

    it "creates a bank account with balance 0" do
        b = Bank.new
        expect(b.account.balance).to eq 0
    end


    it "a deposit increases the balance by that amount" do
        a = Account.new
        a.deposit(100, "10/02/2019")
        expect(a.balance).to eq 100
    end
end


