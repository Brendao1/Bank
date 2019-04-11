require './lib/bank'
require 'spec_helper'

RSpec.describe "A bank account" do

    it "creates a bank account with balance 0" do
        b = Bank.new
        expect(b.account.balance).to eq 0
    end

    it "a bank account is created with a Statement which stores the transactions" do
        a = Account.new
        expect(a.statement.transactions).to eq []

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

    it "stores a transaction in the Statement class" do
        a = Account.new
        a.deposit(100, "10/02/2019")
        a.store_transaction
        expect(a.statement.transactions.length).to eq 1
    end

#     it "renders the table with the transactions" do
#         expected_table = <<-EOF
#         +------------+--------+-------+---------+
#         | date       | credit | debit | balance |
#         +------------+--------+-------+---------+
#         | 16/02/2019 |        | 5     | 45      |
#         | 15/02/2019 | 50     |       | 50      |
#         +------------+--------+-------+---------+
#    EOF
#         a = Account.new
#         a.deposit(50, "15/02/2019")
#         a.store_transaction
#         a.withdrawal(5, "16/02/2019")
#         a.store_transaction
#         expect(STDOUT).to receive(:puts)
#         expect{a.print_statement}.to output(expected_table).to_stdout
#     end

end


