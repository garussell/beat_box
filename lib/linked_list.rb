class LinkedList
  attr_reader :head

  def initialize
    @head = nil
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
      current_node = current_node.next_node unless current_node == nil
    end
    inserted_node = Node.new(data)
    inserted_node.next_node = current_node.next_node
    current_node.next_node = inserted_node
    inserted_node.data
  ## 
  # we are starting with local variable current_node
  # we are looping through the list using .times, so if index param is 1, we are not looping but placing inserted_node into index "0" 
  # then, we are essentially shuffling nodes around by setting current_node to next_node (unless current_node is nil because thats the end of the list)
  end
end #class