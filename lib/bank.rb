require_relative 'account'

class Bank
  attr_reader :account

  def initialize
    @account = Account.new
  end
end
