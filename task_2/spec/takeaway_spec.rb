require './lib/takeaway'

describe 'Takeaway' do 

  let(:takeaway) { Takeaway.new }

  it "should have a list of dishes and their prices" do
    expect(takeaway.menu['pizza']).to be(15)
  end

  it "checks an order" do
    expect(takeaway.total_order({'pizza' => 4, 'steak' => 4}, 72)).to eq(true)
  end

  it "raises an error if the order total is incorrect" do
    expect(takeaway.total_order({'pizza' => 2, 'steak' => 2}, 30)).to raise_error
  end

  xit "initiates a text if an order is totalled correctly" do
    expect(takeaway.send_text).to eq(true)
  end

end