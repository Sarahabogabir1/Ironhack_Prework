#Shake Shack exercise using Ruby

class ShakeShop
    def initialize
        @milkshakes = []
    end

    def add_milkshakes(milkshake)
        @milkshakes.push(milkshake)
    end

    def list_all_milkshakes
          @milkshakes.each do |milkshake|
            puts milkshake.name
            milkshake.ingredients.each do |ingredient|
                print "\t", ingredient.name, " ", ingredient.price
            end
            puts "\n"
            print "\tTotal price: ", milkshake.price_of_milkshake
            puts "\n"
        end
    end

    def price_of_all_milkshakes
        total = 0
        @milkshakes.each do |milkshake|
            total += milkshake.price_of_milkshake
        end

        print "Price of all milkshakes: ", total, "\n"
    end
end

class Milkshake
    attr_reader :name, :baseprice, :ingredients
    def initialize(name)
        @name = name
        @baseprice = 3 
        @ingredients = []
    end

    def add_ingredient(ingredient)
        @ingredients.push(ingredient)
    end

    def price_of_milkshake
        @totalprice = @baseprice
        for ingredient in @ingredients
            @totalprice += ingredient.price
        end
        @totalprice
    end
end

class Ingredient
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
end

#all of my ingredients
expresso = Ingredient.new("Expresso", 3)
butterbeer = Ingredient.new("ButterBeer", 3)
mango = Ingredient.new("Mango", 1)
chocolate = Ingredient.new("Chocolate", 2)

# (1) Nizar's Milkshake
nizars_milkshake = Milkshake.new("Nizar's shake")
nizars_milkshake.add_ingredient(expresso)
nizars_milkshake.add_ingredient(chocolate)

# (2) Sarah's Milkshake
sarahs_milkshake = Milkshake.new("Sarah's shake")
sarahs_milkshake.add_ingredient(expresso)
sarahs_milkshake.add_ingredient(mango)

# (3) Harry Potter's Milkshake
harry_potter_milkshake = Milkshake.new("Harry Potter's shake")
harry_potter_milkshake.add_ingredient(butterbeer)
harry_potter_milkshake.add_ingredient(expresso)

#Shop 
wizard_shakeshop = ShakeShop.new
wizard_shakeshop.add_milkshakes(nizars_milkshake)
wizard_shakeshop.add_milkshakes(sarahs_milkshake)
wizard_shakeshop.add_milkshakes(harry_potter_milkshake)

#call the price_of_milkshake method to return a milkshakes total price when checking out.
wizard_shakeshop.list_all_milkshakes
wizard_shakeshop.price_of_all_milkshakes



