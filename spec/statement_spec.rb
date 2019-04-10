require './lib/bank'

RSpec.describe "A Statement" do

    it "is created to store the transactions" do
        s = Statement.new
        expect(s.transactions.length).to eq 0
    end

    it "prints the transactions in a table" do
        
    end

end