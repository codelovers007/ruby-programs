# [Leetcode]: https://leetcode.com/problems/design-browser-history/description/
# Solution: https://leetcode.com/problems/design-browser-history/solutions/8402637/1472-design-browser-history-by-nirajhack-qxdn/
class LinkedList
  attr_accessor :head, :tail
end

class Node
  attr_accessor :data, :next, :prev

  def initialize(data)
    @data = data
  end
end

class BrowserHistory
  attr_accessor :list, :current

  def initialize(homepage)
    @list = LinkedList.new
    node = Node.new(homepage)
    @list.head = node
    @list.tail = node
    @current = node
  end

  def visit(url)
    node = Node.new(url)

    if @current.next
      @current.next.prev = nil
      @current.next = nil
      @list.tail = @current
    end

    if @list.head&.next.nil?
      @list.head.next = node
      node.prev = @list.head
      @list.tail = node
      @current = node
    else
      prev = @list.tail
      node.prev = prev
      prev.next = node
      @list.tail = node
      @current = node
    end

    node.data
  end

  def back(steps)
    i = 0
    while i < steps
      @current = @current.prev ? @current.prev : @current
      i += 1
    end

    @current.data
  end

  def forward(steps)
    i = 0

    while i < steps && @current.next
      @current = @current.next 
      i += 1
    end

    @current.data
  end
end

# browserHistory = BrowserHistory.new("leetcode.com")
# browserHistory.visit("google.com")
# browserHistory.visit("facebook.com")
# browserHistory.visit("youtube.com")
# browserHistory.back(1)
# browserHistory.forward(1)

# Your BrowserHistory object will be instantiated and called as such:
# obj = BrowserHistory.new(homepage)
# obj.visit(url)
# param_2 = obj.back(steps)
# param_3 = obj.forward(steps)
