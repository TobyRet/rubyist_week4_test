require 'text_message'

describe 'Text Message' do

  let(:sms) {Text_message.new}
  let(:takeaway) {Takeaway.new}

  it "should provide the correct delivery time" do
    expect(sms.delivery_time).to eq((Time.now + 3600).strftime("%I:%M%p"))
  end

end