class LinkedList
  attr_accessor :head, :tail

  def reverse_list(head)
    prev = nil
    current = head

    while current
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end
    prev
  end
end

class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
  end
end

list = LinkedList.new
a = Node.new(1)
list.head = a
b = Node.new(2)
a.next = b
c = Node.new(3)
b.next = c
d = Node.new(4)
c.next = d
e = Node.new(5)
d.next = e
list.tail = e

list.head = list.reverse_list(list.head)
