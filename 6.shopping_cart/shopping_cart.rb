class ShoppingCart
  attr_reader :items, :checkout
  def initialize
    @items = []
    @costs = 0
  end

  def add_item(item)
    @items.push(item)
  end

  def checkout
    total_checkout = @costs
    @items.each do |item|
      total_checkout += item.price
    end
if @items.length > 5
      total_checkout - (total_checkout * 0.10)
    else
      total_checkout
    end
  end
end

class Item
  attr_reader :name, :price
  def initialize(name,price)
    @name = name
    @price = price
  end

  def price
    @price
  end

end

class Houseware
  attr_reader :name, :price
  def initialize(name,price)
    @name = name
    @price = price
  end

  def price
    if @price > 100
       @price - (@price * 0.05)
    else
      @price
    end
  end
end

class Fruit
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
      shopping_day = Time.new
      if shopping_day.saturday? || shopping_day.sunday?
        @price - (@price * 0.10)
      else 
        @price
      end
    end
end

# Variables for: fruits, items and housewares
vacuum = Houseware.new("Vacuum", 150)
toaster = Houseware.new("Toaster", 20)
bananas = Fruit.new("Bananas", 10)
oranges = Fruit.new("Oranges", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

#my cart
sarahs_cart = ShoppingCart.new
sarahs_cart.add_item(bananas)
sarahs_cart.add_item(oranges)
sarahs_cart.add_item(rice)
sarahs_cart.add_item(vacuum)
sarahs_cart.add_item(toaster)
sarahs_cart.add_item(anchovies)

puts "TOTAL:"
puts "\t$#{sarahs_cart.checkout}"


