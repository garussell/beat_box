class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def append(data)
    @head = Node.new(data)
  end
  
  def count
    if @head == nil
      count = 0
    else
      count = 1
    end
  end
end