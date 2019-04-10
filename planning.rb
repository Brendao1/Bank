class Transaction

    attr_reader :amount, :date

    def deposit(amount, date)
        @amount = amount
        @date = Date.today()
        @balance += amount
    end

    def withdrawal(amount, date)
        @amount = amount
        @date = Date.today()
        @balance -= amount
    end

end


class Account

    def initialize
        @balance = STARTING_BALANCE
    end

    def store_transactions
        @transactions << {date: @date, credit: @amount, debit: @amount}
    end

end

class Statement



end


# requires Account
# requires Transaction
class Bank

    def initialize
        @account = Account.new()
        @statement = Statement.new()

    end

end