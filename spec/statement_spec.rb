require './lib/bank'

RSpec.describe "A Statement" do

    it "is created to store the transactions" do
        s = Statement.new
        expect(s.transactions.length).to eq 0
    end

    it "renders the table with the transactions" do
        expected_table = <<-EOF
        +------------+--------+-------+---------+
        | date       | credit | debit | balance |
        +------------+--------+-------+---------+
        | 16/02/2019 |        | 5     | 45      |
        | 15/02/2019 | 50     |       | 50      |
        +------------+--------+-------+---------+
   EOF
        a = Account.new
        a.deposit(50, "15/02/2019")
        a.store_transaction
        a.withdrawal(5, "16/02/2019")
        a.store_transaction
        expect(STDOUT).to receive(:puts)
        expect{a.print_statement}.to output(expected_table).to_stdout
    end


end