require './lib/wallet'

RSpec.describe Wallet do
  subject { Wallet.new(1) }

  it "should have default balance" do
    expect(subject.balance).to eq(10000)
  end
end
