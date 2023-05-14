require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
  describe "#exists" do
    it 'exists and instantiates LinkedList with it' do
      bb = BeatBox.new
      list = LinkedList.new

      expect(bb).to be_an_instance_of(BeatBox)
      expect(bb.list).to be_an_instance_of(LinkedList)
    end
  end

  describe "#append" do
    it 'can add a list of items' do
      bb = BeatBox.new

      expect(bb.append("deep doo ditt")).to eq("deep doo ditt")
    end
  end
end