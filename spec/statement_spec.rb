require './lib/bank'

RSpec.describe "A Statement" do

    it "is created to store the transactions" do
        s = Statement.new
        expect(s.transactions.length).to eq 0
    end

end