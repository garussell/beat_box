class BeatBox
  attr_reader :list

  def initialize(list = LinkedList.new)
    @list = list
  end

  def append(data_string)
    sound_bites_arr = data_string.split(" ")
    sound_bites_arr.each { |sound| @list.append(sound) }
    sound_bites_arr.join(" ")
  end

  def count
    @list.count
  end

  def play(voice = "Samantha", speed = "225", beats = "Ki ta ta ke ta ka ju no ta ka di me ta ... ka ... di ... meh ... ta ka di ... meh ... ta ka di ... meh ta ka di me te ta ka di me te ta ka di me te Ki")
    `say -r #{speed} -v #{voice} #{beats}`
  end
end