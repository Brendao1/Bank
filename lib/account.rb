class Account

    STARTING_BALANCE = 0

    attr_accessor :balance

    def initialize
        @balance = STARTING_BALANCE

    end

    def balance
        return @balance
    end



end

