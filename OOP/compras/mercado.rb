class Market
    def initialize(product)
        @product = product
    end

    def buy
        puts "You bought the product #{@product.name} for R$#{@product.price}."
    end
end
