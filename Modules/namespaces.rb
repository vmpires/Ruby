module ReverseWorld
    def self.pp text
        print text.reverse.to_s
    end

    class Imprimir
        def call text
            print text
            print "..passou por aqui"
        end
    end
end

ReverseWorld::pp 'O resultado é'
imprimir = ReverseWorld::Imprimir.new
imprimir.call "O resultado..."