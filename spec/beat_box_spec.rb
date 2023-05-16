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
      expect(@bb.list.head).to eq(nil)
    end
  end

  describe "#append" do
    it 'can add a list of items' do

      @bb.append("deep doo ditt")
      expect(@bb.count).to eq(3)
      expect(@bb.list.head.data).to eq("deep")
      expect(@bb.list.head.next_node.data).to eq("doo")
    
      @bb.append("woo hoo shu")
      expect(@bb.count).to eq(6)
    end
  end

  describe "#play" do
    it 'can say words' do
      
      @bb.append("deep doo ditt woo hoo shu")
      expect(@bb.play).to eq(`say -r 500 -v Zarvox "deep doo ditt woo hoo shu"`)
      expect(@bb.count).to eq(6)
    end
  end

  describe "#all" do
    it 'can reject invalid words' do
      @bb.append("deep")
      @bb.append("Mississippi")
      
      expect(@bb.all).to eq("deep")
  
      @bb.prepend("tee tee tee")
      expect(@bb.all).to eq("tee tee tee deep")
    end
  end

  describe "#rate" do
    it 'can change its rate of speech' do
      @bb.append("deep dop dop deep")

      expect(@bb.play).to eq(` say -r #{@rate} -v #{@voice} "deep dop dop deep" `)

      @bb.rate = 100

      expect(@bb.rate).to eq(100)
    end
  end

  describe "#voice" do
    it 'can change its voice too' do
      @bb.append("beep bop boop boop beep")

      expect(@bb.play).to eq(` say -r #{@rate} -v #{@voice} "beep bop boop boop beep" `)
      @bb.voice = "Daniel"

      expect(@bb.voice).to eq("Daniel")
    end
  end

  describe "#reset_rate" do
    it 'can reset back to default rate' do
      @bb.append("sum uh lum a doom a lum uh")

      @bb.rate = 100
      expect(@bb.rate).to eq(100)
      expect(@bb.play).to eq(` say -r 100 -v "Boing" "sum uh lum a doom a lum uh" `)
      
      @bb.reset_rate
      expect(@bb.rate).to eq(500)
      expect(@bb.play).to eq(` say -r 500 -v "Boing" "sum uh lum a doom a lum uh" `)
    end
  end

  describe "#reset_voice" do
    it 'can reset back to default voice' do
      @bb.append("sum uh lum a dum a lum uh")
      @bb.rate = 250

      @bb.voice = "Daniel"
      expect(@bb.voice).to eq("Daniel")
      expect(@bb.play).to eq(` say -r 250 -v #{@bb.voice} "sum uh lum a doom a lum uh" `)

      @bb.reset_voice
      expect(@bb.voice).to eq("Boing")
      expect(@bb.play).to eq(` say -r 250 -v #{@bb.voice} "sum uh lum a doom a lum uh" `)
    end
  end
end