require_relative 'account'
# require_relative 'transaction'

class Bank

    attr_reader :account

    def initialize
        @account = Account.new()
    end

end

