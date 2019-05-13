require './lib/account'
require 'spec_helper'

RSpec.describe 'A bank account' do

  before :each do
    @a = Account.new
  end

  it 'a bank account is created with a Statement which stores the transactions' do
    expect(@a.statement.transactions).to eq []
  end


  it 'a deposit increases the balance by that amount' do
    @a.deposit(100, '10/02/2019')
    expect(@a.balance).to eq 100
  end

  it 'a withdrawal decreases the balance by that amount' do

    @a.deposit(100, '10/02/2019')
    @a.withdrawal(30, '11/02/2019')
    expect(@a.balance).to eq 70
  end

  it 'a deposit sets the withdrawal_amount to nil' do
    @a.deposit(100, '10/02/2019')
    expect(@a.withdrawal_amount).to eq nil
  end

  it 'a withdrawal sets the deposit_amount to nil' do
    @a.withdrawal(30, '11/02/2019')
    expect(@a.deposit_amount).to eq nil
  end

  it 'stores a transaction in the Statement class' do
    @a.deposit(100, '10/02/2019')
    @a.store_transaction
    expect(@a.statement.transactions.length).to eq 1
  end

  it 'prints out the transactions in the Statement' do
    expected_table = <<-EOF
+------------+--------+-------+---------+
| date       | credit | debit | balance |
+------------+--------+-------+---------+
| 16/02/2019 |        | 5     | 45      |
| 15/02/2019 | 50     |       | 50      |
+------------+--------+-------+---------+
    EOF

    @a.deposit(50, '15/02/2019')
    @a.store_transaction
    @a.withdrawal(5, '16/02/2019')
    @a.store_transaction
    @a.print_statement
    expect { @a.print_statement }.to output(expected_table).to_stdout

  end


end
