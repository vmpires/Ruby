class Instrumento
    def escrever
        puts 'Escrevendo'
    end

end

class Teclado < Instrumento

end

class Lapis < Instrumento
    def escrever
        puts 'Escrevendo com lápis'
    end
end

class Caneta < Instrumento
    def escrever
        puts 'Escrevendo à caneta'
    end
end


caneta = Caneta.new
teclado = Teclado.new
lapis = Lapis.new

lapis.escrever
caneta.escrever
teclado.escrever