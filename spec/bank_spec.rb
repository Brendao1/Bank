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


    it "a withdrawal decreases the balance by that amount" do
        a = Account.new
        a.deposit(100, "10/02/2019")
        a.withdrawal(30, "11/02/2019")
        expect(a.balance).to eq 70
    end

    it "a deposit sets the withdrawal_amount to nil" do
        a = Account.new
        a.deposit(100, "10/02/2019")
        expect(a.withdrawal_amount).to eq nil
    end

    it "a withdrawal sets the deposit_amount to nil" do
        a = Account.new
        a.withdrawal(30, "11/02/2019")
        expect(a.deposit_amount).to eq nil
    end
end


