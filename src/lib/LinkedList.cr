class LinkedList(L)
  def initialize
    @head = Node(L).new
    @tail = @head
  end

  def initialize(value : L)
    @head = Node(L).new
    @tail = @head

    self.append(value)
  end
  
  def prepend(value : L)
    new_node = Node(L).new(value)
    @head = new_node
    
    if @tail.nil?
      @tail = new_node
    end

    value
  end

  def append(value : L)
    new_node = Node(L).new(value)

    if @head.nil?
      @head = new_node
      @tail = new_node

      return value
    end

    @tail.next = new_node
    @tail = new_node

    return value
  end

  def delete(value : T)
    if @head.nil?
      return nil
    end

    deleted_node = nil

    while (!@head.nil? && @head.value == value)
      deleted_node = @head
      @head = @head.next
    end

    current_node = @head

    if (!current_node.nil?)
      while(!current_node.next.nil?)
        if current_node.next.value == value
          deleted_node = current_node.next
          current_node.next = current_node.next.next
        else
          current_node = current_node.next
        end
      end
    end

    if @tail.value == value
      @tail = current_node
    end

    deleted_node
  end

  def top
    @head.value
  end

  def peek
    @tail.value
  end

  protected def tail
    @tail
  end

  protected def head
    @head
  end

  class Node(T)
    @next = nil
    @value = nil
  
    def initialize
    end
  
    def initialize(@value : T)
    end
  
    def value
      @value
    end
  
    def next
      @next
    end
  
    def next=(node : Node(T) | Nil)
      @next = node
    end
  end
end

