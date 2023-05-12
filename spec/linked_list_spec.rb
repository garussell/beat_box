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
  it 'can add sounds to the end of list' do
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

describe "#multiple nodes" do
  it 'correctly modulate head variable' do
    list = LinkedList.new

    list.append("doop")

    expect(list.to_string).to eq("doop")
    expect(list.head.next_node).to eq(nil)
    
    list.append("deep")

    expect(list.head.next_node.next_node).to eq(nil)
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end
end

describe "#prepend" do
  it 'can add sounds to beginning of list' do
    list = LinkedList.new

    list.append("plop")
    expect(list.to_string).to eq("plop")

    expect(list.append("suu").data).to eq("suu")
    expect(list.prepend("dop").data).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end
end

describe "#insert" do
  it 'can add sounds at specified index' do
    list = LinkedList.new

    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.insert(1, "woo")).to eq("woo")
    expect(list.to_string).to eq ("dop woo plop suu")
    end
  end
end 