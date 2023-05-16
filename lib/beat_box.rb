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

  def play(voice = "Samantha", speed = "225", beats = "doop da doop de doop")
    `say -r #{speed} -v #{voice} #{beats}`
  end

  def all
    sound_bites = @list.to_string.split
    sound_bites.reject! { |word| word.split("-").count > 2 }       
  end

end

  # def syllable_counter
  #   syllable_count = []
  #   # vowels = %w[ a e i o u ]
  #   @list.split("").each do |word|
  #     if word.to_s.downcase.include?("a")
  #       syllable_count << word
  #     elsif word.to_s.downcase.include?("i")
  #       syllable_count << word
  #     elsif word.to_s.downcase.include?("o")
  #       syllable_count << word
  #     elsif word.to_s.downcase.include?("u")
  #       syllable_count << word
  #     elsif word.to_s.downcase.include?("y")
  #       syllable_count << word
  #     end
  #   end
  #   syllable_count.count
  # end
