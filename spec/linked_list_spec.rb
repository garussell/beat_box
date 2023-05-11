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

    expect(list.append("doop")).to eq("doop")
  end
end
end #final