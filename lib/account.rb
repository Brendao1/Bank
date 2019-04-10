require 'date'

class Account

    attr_accessor :balance

    STARTING_BALANCE = 0

    def initialize
        @balance = STARTING_BALANCE
        @transactions = []
    end


    def deposit(deposit_amount, date)
        @deposit_amount = deposit_amount
        @date = date
        @balance += @deposit_amount
    end


    def withdrawal(withdrawal_amount, date)
        @withdrawal_amount = withdrawal_amount
        # @date = Date.today()
        @date = date
        @balance -= withdrawal_amount
    end

end

