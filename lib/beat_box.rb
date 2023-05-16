class BeatBox
  attr_reader :list, :syllable_counter

  def initialize(list = LinkedList.new)
    @list = list
  end

  def append(data)
    sound_bites_arr = data.split(" ")
    sound_bites_arr.each { |sound| @list.append(sound) }
    sound_bites_arr.join(" ")
  end

  def prepend(data)
    sound_bites_arr = data.split(" ")
    sound_bites_arr.each { |sound| @list.prepend(sound) }
    sound_bites_arr.join(" ")
  end

  def count
    @list.count
  end

  def play(voice = "Samantha", rate = "225", beats = "doop da doop de doop")
    `say -r #{rate} -v #{voice} #{beats}`
  end

  def all
    sound_bites = @list.to_string.split
    sound_bites.reject! { |word| word.length > 4 }
    sound_bites.join(" ")
  end

end

