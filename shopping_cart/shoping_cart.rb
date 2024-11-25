# Shopping cart
# add items
# total cost of cart
# total cost of whole shopping cart

# list items


require './item'

class ShoppingCart
  def initialize(items = [])
    @items = items
  end

  def add_items(items)
    @items += items
  end

  def list_item
    @items.each do |item|
      puts "name: #{item.name}, cost: #{item.discounted_cost},  quantity: #{item.quantity}"
    end
  end

  def cart_total_cost
    @items.sum(&:discounted_cost)
  end

  # def cost(items)
  #   items.sum(&:discounted_cost)
  # end

  def self.total_cost(items)
    items.map { |item_array| new(item_array).cart_total_cost }.sum
  end
end



item1 = Item.new('test', 20, 5)
item2 = Item.new('test1', 20.5, 6)

cart = ShoppingCart.new
cart.add_items([item1, item2])
cart.list_item
puts "Total cost of cart #{cart.cart_total_cost}"


item3 = Item.new('test', 20, 5)
item4 = Item.new('test1', 20.5, 6)

cart2 = ShoppingCart.new
cart2.add_items([item3, item4])
cart2.cart_total_cost

shopping_cart_total = ShoppingCart.total_cost([[item1, item2], [item3, item4]])

puts "Total shopping cart cost is: #{shopping_cart_total}"
