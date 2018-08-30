class DoublyLinkedList(L)
    def initialize
        @head = Node(L).new
        @tail = @head
    end
    
    def initialize(value : L)
        @head = Node(L).new(value)
        @tail = @head
    end

    def prepend
    end

    def append
    end

    def delete
    end

    def find
    end

    def top
    end
    
    def peek
    end

    class Node(T)
        @next = nil
        @prev = nil
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

        def prev=(node : Node(T) | Nil)
            @prev = prev
        end
      end
end