require './lib/takeaway'

describe 'Takeaway' do 

  let(:takeaway) { Takeaway.new }

  it "should have a list of dishes and their prices" do
    expect(takeaway.menu['pizza']).to be(15)
  end

  it "checks an order total" do
    expect(takeaway.order_sum_check({'pizza' => 4, 'steak' => 4}, 72)).to eq(true)
  end

  it "raises an error if the total is incorrect" do
    expect{takeaway.order_sum_check({'pizza' => 2, 'steak' => 2}, 30)}.to raise_error
  end

end