require './lib/wallet'
require './lib/buy_fruit'

RSpec.describe BuyFruit do
  let(:wallet) { Wallet.new(1) }

  it "should have brought fruit" do
    shopping = BuyFruit.call(wallet, 9000)

    expect(shopping[:status]).to be_truthy
    expect(shopping[:wallet].balance).to eq(1000)
  end

  it "should have not brought fruit" do
    shopping = BuyFruit.call(wallet, 12000)

    expect(shopping[:status]).to be_falsey
    expect(shopping[:wallet].balance).to eq(10000)
  end
end
