require_relative 'account'
require 'terminal-table'

class Statement

    attr_accessor :transactions

    def initialize
        @transactions = []
    end


end