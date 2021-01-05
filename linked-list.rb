class LinkedList
  def initialize
    @array = []
  end

  def append(value)
    @array.push Node.new(value)
  end

  def prepend(value)
    @array.unshift Node.new(value)
  end

  def size
    @array.length
  end

  def head
    @array.first
  end

  def tail
    @array.last
  end

  def at(index)
    @array.fetch(index)
  end

  def pop
    @array.pop
  end

  def contains?(value)
    @array.each { |node| 
      if node.value = value
        true
      end
    }
    return false
  end

  def find(value)
    @array.each { |node|
      if node.value = value
        @array.index(node)
      end
    }
    return nil
  end
  
  def to_s
    @array.each {|node|
      print "( #{node.value} ) -> "
    }
    print nil
  end
end

class Node
  @value = nil
  @next_node = nil

  def initialize(value)
    @value = value
  end
end