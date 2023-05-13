class LinkedList
  attr_reader :head, :count, :to_string

  def initialize
    @head = nil
    @to_string = to_string
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      current_node = current_node.next_node until current_node.next_node == nil
      current_node.next_node = Node.new(data)
    end
  end

  def count
    count = 0
    current_node = @head
    until current_node == nil
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def to_string
    concat_data = ""
    current_node = @head
    until current_node == nil
      concat_data += " #{current_node.data}" 
      current_node = current_node.next_node
    end
    concat_data.strip
  end

  def prepend(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = Node.new(data)
      current_node.next_node = @head
      @head = current_node
    end
  end

  def insert(index, data)
    current_node = @head
    (index - 1).times do |index|
      current_node = current_node.next_node #unless current_node.next_node == nil
    end
    inserted_node = Node.new(data)
    inserted_node.next_node = current_node.next_node
    current_node.next_node = inserted_node
    inserted_node.data
  end

  def find(index, list_length)
    current_node = @head
    create_index = to_string.split(" ")
    create_index[index]
    
    counter = 0
    sound_bites = []
    
    until counter == list_length || current_node == nil 
      sound_bites << @head.data
      # require 'pry';binding.pry
      counter += 1
    end
    sound_bites

  end
  
end #class