require 'takeaway'

describe 'Takeaway' do 

  it "should have a list of dishes and their prices" do
    expect(Takeaway::MENU[:pizza]).to eq(15)
  end

end