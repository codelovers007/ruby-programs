=begin 
  
  Program for parent and child logic

  Q) It should return all the child of parent character

  Output: "B,C"


=end

class CategoryTree
  @@nodes = {}

  # Add child and parent in the node
  def add_category(child, parent)
    if parent.nil?
      @@nodes[child] = []
    else
      @@nodes[parent] = @@nodes[parent] << child
    end
  end

  # Get all the childs by its parent
  def get_children(parent)
    @@nodes[parent]
  end
end



# Example
# Input values 
c = CategoryTree.new

# Add childs and parents in the node
c.add_category('A', nil)
c.add_category('B', 'A')
c.add_category('C', 'A')

# Get all the childs of its parent
puts c.get_children('A').join(',')
