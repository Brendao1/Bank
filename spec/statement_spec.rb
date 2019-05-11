# require './lib/account'
require './lib/statement'

# mock out the dependency on Account
# insert AccountDouble

class AccountDouble
  attr_accessor   :balance, :statement
  attr_reader     :withdrawal_amount, :deposit_amount

  STARTING_BALANCE = 0

  def initialize
    @balance = STARTING_BALANCE
    @statement = Statement.new
  end

  def deposit(deposit_amount, date)
    @withdrawal_amount = nil
    @deposit_amount = deposit_amount
    @date = date
    @balance += @deposit_amount
  end

  def withdrawal(withdrawal_amount, date)
    @deposit_amount = nil
    @withdrawal_amount = withdrawal_amount
    @date = date
    @balance -= withdrawal_amount
  end

  def store_transaction
    @statement.transactions << { date: @date, credit: @deposit_amount, debit: @withdrawal_amount, balance: @balance }
  end

  def print_statement
    @statement.print_statement
  end
end


RSpec.describe 'A Statement' do
  it 'is created to store the transactions' do
    s = Statement.new
    expect(s.transactions.length).to eq 0
  end

  it 'renders the table with the transactions' do
    expected_table = <<-EOF
+------------+--------+-------+---------+
| date       | credit | debit | balance |
+------------+--------+-------+---------+
| 16/02/2019 |        | 5     | 45      |
| 15/02/2019 | 50     |       | 50      |
+------------+--------+-------+---------+
    EOF
    a = AccountDouble.new
    a.deposit(50, '15/02/2019')
    a.store_transaction
    a.withdrawal(5, '16/02/2019')
    a.store_transaction
    expect { a.print_statement }.to output(expected_table).to_stdout
  end
end
