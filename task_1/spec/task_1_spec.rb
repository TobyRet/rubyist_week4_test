require 'task_1'

describe "Array" do

  context "my_inject" do

    it "should perform the correct operation on the array" do
      a = [1,2,3,4]
      expect(a.my_inject {|sum, n| sum + n }).to eq(10)
      expect(a.my_inject {|sum, n| sum + n * 3 }).to eq(30)
    end

  end

end