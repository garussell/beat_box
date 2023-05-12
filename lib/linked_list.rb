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
    #this is called here because it will iterate through each node and count each one until next node is nil, so in the test we appended 2 nodes so it runs 2 times
    count
  end
    #do i need to make a count counter to reference in other methods?

  def to_string
    # if there is only 1 @head, @head.data prints the only head
    # @head.data 
    # so how do i add all @data inputs together? how to concat without having an array? aka, append elements "data" to itself... i need to create instance variable that works w/n to_string 
    concat_data = ""
    current_node = @head
    # now loop through the linked list; starts at 'current_node' and ends at nil
    until current_node == nil
      concat_data << current_node.data
    # after current_node data is shoveled into the concat_data variable, move on to next node
      current_node = current_node.next_node
    end
    # now iterate through the loop, which is to call the instance variable
    concat_data
  end

 
end #class