require_relative 'account'
require 'terminal-table'

class Statement

    attr_accessor :transactions

    def initialize
        @transactions = []
    end

    def print_statement
        rows = []
        table = Terminal::Table.new :rows => rows
        i = @transactions.length
        # p [@transactions[i-1][:date], @transactions[i-1][:credit], @transactions[i-1][:debit], @transactions[i-1][:balance]]
        loop do
    
            rows << [@transactions[i-1][:date], @transactions[i-1][:credit], @transactions[i-1][:debit], @transactions[i-1][:balance]]
                i -= 1
            break if i < 0
    
        end
        table = Terminal::Table.new :rows => rows
        table = Terminal::Table.new :headings => ['date', 'credit', 'debit', 'balance'], :rows => rows
        puts table
    end
end