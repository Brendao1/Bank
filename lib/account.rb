require 'terminal-table'
require 'date'

class Account

    attr_accessor :balance

    STARTING_BALANCE = 0

    def initialize
        @balance = STARTING_BALANCE
        @transactions = []
    end

end

