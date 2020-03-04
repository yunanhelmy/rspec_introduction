class DecreaseBalance
  def self.call(wallet, amount)
    options = {}
    options[:wallet] = wallet
    options[:status] = false

    if options[:wallet].balance >= amount
      options[:wallet].balance -= amount
      options[:status] = true
    end

    options
  end
end
