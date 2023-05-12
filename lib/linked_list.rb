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
    # add data at the beginning of the node
    # @head is not occupied, at data to head
    if @head == nil
      @head = Node.new(data)
    else
    # instance varialble to store new instance of node
      current_node = Node.new(data)
    # current position - next_node is now the @head
      current_node.next_node = @head
    # swap position - head is now the current_node which was the most recent object created
      @head = current_node
    end
  end

  def insert(index, data)
    # if the list is empty, add something
    if @head == nil
      @head = Node.new(data)
    else
      insert_node = Node.new(data)
    # created new instance of node class
    #
      
    end
  end
end 