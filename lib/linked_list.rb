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
      current_node = current_node.next_node 
    end
    inserted_node = Node.new(data)
    inserted_node.next_node = current_node.next_node
    current_node.next_node = inserted_node
    inserted_node.data
  end

  def find(index, how_many)
    # if there are no items in the list, may I should raise an error
    # if there is only one item, or the list count is smaller than the index number reqested, it can raise another error say "list is smaller than that", or something along those lines
    #if the index does exist, and the how_many parameter is more than what remains, than it will just print to the end of the list
    # i then there is flow-control here, conditional if/else statement with edge case/ raising error if parameters are off
    # hypothesis:  if there are 5 items and we need to access index[2], maybe i have to run a loop x2 before printing the result --- then print the remaining iterations of the list per specified number of times
  end
end #class