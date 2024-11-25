class Item
  DISCOUNT = 10

  attr_reader :name, :cost, :quantity

  def initialize(name, cost, quantity)
    @name = name
    @cost = cost
    @quantity = quantity
  end

  def discounted_cost
    total_cost = cost * quantity
    return total_cost if quantity <= 5

    total_cost * (1 - DISCOUNT / 100.0)
  end
end
