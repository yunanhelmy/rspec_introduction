require 'decrease_balance'

class BuyFruit
  def self.call(wallet, price)
    options = {}

    transaction = DecreaseBalance.(wallet, price)
    options[:status] = transaction[:status]
    options[:wallet] = transaction[:wallet]

    options
  end
end
