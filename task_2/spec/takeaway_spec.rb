require './lib/takeaway'

describe 'Takeaway' do 

  let(:takeaway) { Takeaway.new }

  it "should have a list of dishes and their prices" do
    expect(takeaway.menu['pizza']).to be(15)
  end

  it "checks an order total" do
    Takeaway.any_instance.stub(:confirm_order).and_return(true) 
    expect(takeaway.order_sum_check({'pizza' => 4, 'steak' => 4}, 72)).to eq(true)
  end

  it "raises an error if the total is incorrect" do
    expect{takeaway.order_sum_check({'pizza' => 2, 'steak' => 2}, 30)}.to raise_error
  end

  it "should send an order confirmation text" do
    Takeaway.any_instance.stub(:confirm_order).and_return(true) 
    takeaway.order_sum_check({'pizza' => 4, 'steak' => 4}, 72)
    expect(takeaway.confirm_order).to eq(true)
  end

  it "should provide the correct delivery time" do
    expect(takeaway.delivery_time).to eq((Time.now + 3600).strftime("%I:%M%p"))
  end

end