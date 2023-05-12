require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
describe "#exists" do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end
end

describe "#head" do
  it 'has head property' do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end
end

describe "#append" do
  it 'can add sounds to the list' do
    list = LinkedList.new

    expect(list.append("doop").data).to eq("doop")
  end
end

describe "#count" do
it 'can count number of nodes' do
  list = LinkedList.new
  
  list.append("doop")

  expect(list.count).to eq(1)
  end
end

describe "#to_string" do
it 'can list data points in a string' do
  list = LinkedList.new

  list.append("doop")

  expect(list.to_string).to eq("doop")
  end
end


end #final