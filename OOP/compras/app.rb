require_relative 'produto'
require_relative 'mercado'

carro = Product.new
carro.name = "Blackie"
carro.price = 20000

mercado = Market.new(carro)
mercado.buy