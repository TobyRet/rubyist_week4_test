require './lib/takeaway'

describe 'Takeaway' do 

  let(:takeaway) { Takeaway.new }

  it "should have a list of dishes and their prices" do
    expect(takeaway.menu['pizza']).to be(15)
  end

  it "correctly sum total an order" do
    expect(takeaway.total_order(['pizza', 'steak'])).to eq(18)
  end
end