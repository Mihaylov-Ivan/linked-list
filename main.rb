require_relative './linked_list.rb'

def run() 
    linked_list = LinkedList.new

    linked_list.append("append1")
    linked_list.append("append2")
    linked_list.pre_pend("prepend1")
    puts linked_list.size
    linked_list.append("append3")
    linked_list.pre_pend("prepend2")
    puts linked_list.size
    puts ("head value is #{linked_list.head.value}")
    puts ("tail value is #{linked_list.tail.value}")
    puts ("value at index 2 is #{linked_list.at(2).value}")
    puts ("value at index 4 is #{linked_list.at(4).value}")
    puts linked_list.to_s
    puts "Removing last element"
    linked_list.pop()
    puts linked_list.size
    puts linked_list.to_s
    puts ("adding node append4")
    linked_list.append("append4")
    puts linked_list.size
    puts linked_list.to_s
    puts ("linked list contains prepend2 is #{linked_list.contains?('prepend2')}")
    puts ("linked list contains append3 is #{linked_list.contains?('append3')}")
    puts ("linked list element append1 is at index #{linked_list.find('append1')}")
    puts ("inserting node inser1 at index 3")
    linked_list.insert_at('insert1', 3)
    puts linked_list.size
    puts linked_list.to_s
    puts ("inserting node inser2 at index 1")
    linked_list.insert_at('insert2', 1)
    puts linked_list.size
    puts linked_list.to_s
    puts ("removing node at index 3")
    linked_list.remove_at(3)
    puts linked_list.size
    puts linked_list.to_s
end

run()