class Node
  attr_reader :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def changeNextNode(node)
    @next_node = node
  end
end


class LinkedList
  def initialize
    @head = nil
  end

  def getTail
    node = @head
    loop do
      next_node = node.next_node
      break if next_node.nil?
      node = next_node
    end
    return node
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      getTail.changeNextNode(Node.new(value))
    end
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end
end

