require './lib/wallet'
require './lib/buy_fruit'

RSpec.describe BuyFruit do
  let(:wallet) { Wallet.new(1) }
  let(:shopping) { BuyFruit.call(wallet, 9000) }

  it "should have brought fruit" do
    expect(shopping[:status]).to be_truthy
    expect(shopping[:wallet].balance).to eq(1000)
  end
end
