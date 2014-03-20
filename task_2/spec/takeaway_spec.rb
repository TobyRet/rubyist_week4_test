require 'takeaway'
require 'text_message_spec'

describe 'Takeaway' do 

  let(:takeaway) { Takeaway.new }
  let(:sms) { Text_message.new }

  it "should have a list of dishes and their prices" do
    expect(takeaway.menu['pizza']).to be(15)
  end

  it "checks an order total" do
    Takeaway.any_instance.stub(:confirm_order).and_return(true) 
    expect(takeaway.order_sum_check({'pizza' => 4, 'steak' => 4}, 72, sms)).to eq(true)
  end

  it "raises an error if the total is incorrect" do
    expect{takeaway.order_sum_check({'pizza' => 2, 'steak' => 2}, 30, sms)}.to raise_error
  end

  it "should send an order confirmation text" do
    Text_message.any_instance.stub(:confirm_order).and_return(true) 
    takeaway.order_sum_check({'pizza' => 4, 'steak' => 4}, 72, sms)
    expect(sms.confirm_order).to eq(true)
  end

end