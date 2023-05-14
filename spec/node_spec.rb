require './lib/node'

RSpec.describe Node do
  before(:each) do
    @node = Node.new("plop")
  end
  describe "#node class" do
    it 'exists' do

      expect(@node).to be_an_instance_of(Node)
    end
  end

  describe "#data" do
    it 'takes an argument' do

      expect(@node.data).to eq("plop")
    end
  end

describe "#next_node" do
  it 'can return next node' do

    expect(@node.next_node).to eq(nil)
    end
  end
end 