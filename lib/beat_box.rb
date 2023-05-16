class BeatBox
  attr_reader :list
  attr_accessor :rate, :voice

  def initialize(list = LinkedList.new)
    @list = list
    @rate = 500
    @voice = "Boing"
  end

  def append(data)
    sound_bites_arr = data.split(" ")
    sound_bites_arr.each { |sound| @list.append(sound) }
  end

  def prepend(data)
    sound_bites_arr = data.split(" ")
    sound_bites_arr.each { |sound| @list.prepend(sound) }
  end

  def count
    @list.count
  end

  def play
    `say -r #{@rate} -v #{@voice} #{@list.to_string}`
  end

  def all
    sound_bites = @list.to_string.split
    sound_bites.reject! { |word| word.length > 4 }
    sound_bites.join(" ")
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end
end
