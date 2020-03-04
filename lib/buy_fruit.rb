class BuyFruit
  def self.call(wallet, price)
    options = {}
    options[:wallet] = wallet
    options[:status] = false

    if options[:wallet].balance >= price
      options[:wallet].balance -= price
      options[:status] = true
    end

    options
  end
end
