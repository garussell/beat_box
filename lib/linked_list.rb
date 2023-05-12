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
    #starts at 0 and current node is nil
    count = 0
    current_node = @head
    #will continue until it evaluates to false
    until current_node == nil
      count += 1
      current_node = current_node.next_node
    end
    #this is called here because it will iterate through each node and count each one until next node is nil, so in the test we appended 2 node so it runs 2 times
    count
  end
  

  def to_string
      @head.data
 
  end
end