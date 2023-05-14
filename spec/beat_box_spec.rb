require './lib/beat_box'
require './lib/linked_list'
require './lib/node'

RSpec.describe BeatBox do
  before(:each) do
    @bb = BeatBox.new
    @list = LinkedList.new
  end
  describe "#exists" do
    it 'exists and instantiates LinkedList with it' do

      expect(@bb).to be_an_instance_of(BeatBox)
      expect(@bb.list).to be_an_instance_of(LinkedList)
    end
  end

  describe "#append" do
    it 'can add a list of items' do

      expect(@bb.append("deep doo ditt")).to eq("deep doo ditt")
      
      @bb.append("woo hoo shu")

      expect(@bb.count).to eq(6)
    end
  end

  describe "#play" do
    it 'can say words' do

      @bb.append("woo hoo shu")
      
      expect(@bb.play).to eq(`say -r 500 -v Zarvox "woo hoo shu"`)
    end
  end
end