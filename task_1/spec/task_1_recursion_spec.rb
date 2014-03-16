require 'task_1_recursion'

describe 'my_inject (recursion)' do

  let (:array) { Array.new }

  it 'should add the numbers in an array' do
    a = [3,4,5]
    expect(a.my_inject_recursion).to eq(12)
  end

  it 'should allow to change the initial memory value' do
    a = [3,4,5]
    expect(a.my_inject_recursion).to eq(12)
  end

end