class Wallet
  attr_reader :id, :balance

  def initialize(id, balance = 10000)
    @id = id
    @balance = balance
  end
end
