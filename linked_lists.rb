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
  @@node_num = 0

  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      tail.changeNextNode(Node.new(value))
    end
    @@node_num += 1
  end

  def prepend(value)
    @head = Node.new(value, @head)
    @@node_num += 1
  end

  def size
    return @@node_num
  end

  def head
    return @head
  end

  def tail
    return at(@@node_num)
  end

  def at(index)
    node = @head
    index.times do
      next_node = node.next_node
      break if next_node.nil?
      node = next_node
    end
    return node
  end
end
