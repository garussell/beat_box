require './lib/node'

RSpec.describe Node do
describe "#node class" do
  it 'exists' do
    node = Node.new("plop")

    expect(node).to be_an_instance_of(Node)
  end
end

describe "#data" do
  it 'takes an argument' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
  end
end

describe "#next_node" do
  it 'can return next node' do
    node = Node.new("plop")

    expect(node.next_node).to eq(nil)
    end
  end
end 