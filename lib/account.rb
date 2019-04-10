require 'date'

class Account

    attr_accessor   :balance 
    attr_reader     :withdrawal_amount

    STARTING_BALANCE = 0

    def initialize
        @balance = STARTING_BALANCE
        @transactions = []
    end


    def deposit(deposit_amount, date)
        @withdrawal_amount = nil
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

