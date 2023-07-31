require_relative './node.rb'

class LinkedList

    attr_accessor :head_node

    def initialize
        @head_node = nil
    end

    def append(value)
        return begin_list(value) if head_node.nil?

        tail.next_node = Node.new(value)
    end

    def pre_pend(value)
        self.head_node = Node.new(value, head_node)
    end

    def size(node = head_node, count = 1)
        return count if last_node?(node)

        size(node.next_node, count+=1)
    end

    def head
        return head_node
    end

    def tail(node = head_node)
        return node if last_node?(node)

        tail(node.next_node)
    end

    def at(index, node = head_node, count = 0)
        return node if count == index

        at(index, node.next_node, count+=1)
    end

    def pop(node = head_node)
        return node.next_node = nil if node.next_node.next_node == nil 

        pop(node.next_node)
    end

    def contains?(value, node=head_node)
        return false if last_node?(node)
        return true if node.value == value

        contains?(value, node.next_node)
    end

    def find(value, node = head_node, index = 0)
        return index if node.value == value

        find(value, node.next_node, index+=1)
    end

    def insert_at(value, index, node = head_node, count = 0)
        return node.next_node = Node.new(value, node.next_node) if count == index-1

        insert_at(value, index, node.next_node, count+=1)
    end

    def remove_at(index, node = head_node, count = 0)
        return node.next_node = node.next_node.next_node if count == index-1

        remove_at(index, node.next_node, count+=1)
    end
    
    def to_s(node = head_node, string = "")
        string += "( #{node.value} ) -> "
        return "#{string}nil" if last_node?(node)

        to_s(node.next_node, string)
    end


    private

    def begin_list(value)
        self.head_node = Node.new(value)
    end

    def last_node?(node)
        return true if node.next_node == nil

        false
    end
end