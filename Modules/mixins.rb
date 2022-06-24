module ImpressaoDecorada
    def imprimir text
        decoracao = '#' * 100
        puts decoracao
        puts text
        puts decoracao
    end
end

module Pernas
    include ImpressaoDecorada

    def chute_frontal
        imprimir 'Chute Frontal'
    end

    def chute_lateral
        imprimir "Chute Lateral"
    end
end

module Bracos
    include ImpressaoDecorada

    def jab_de_direita
        imprimir 'Jab de direita'
    end

    def jab_de_esquerda
        imprimir "Jab de esquerda"
    end
end

class Lutador
    include Pernas
    include Bracos
end

lutador = Lutador.new
lutador.jab_de_direita
lutador.chute_frontal

