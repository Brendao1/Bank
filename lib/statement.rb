require_relative 'account'
require 'terminal-table'

class Statement
  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def print_statement
    rows = []
    table = Terminal::Table.new rows: rows
    i = @transactions.length
    while i > 0
      rows << [@transactions[i - 1][:date], @transactions[i - 1][:credit], @transactions[i - 1][:debit], @transactions[i - 1][:balance]]
      i -= 1
    end
    table = Terminal::Table.new rows: rows
    table = Terminal::Table.new headings: %w[date credit debit balance], rows: rows
    puts table
  end
end
