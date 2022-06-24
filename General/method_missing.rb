class Fish
    def method_missing(method_name) # Serve para capturar problemas de métodos inexistentes
        puts "Fish don't have #{method_name} behavior"
    end

    def swim
        puts 'Fish is swimming'
    end
end

fish = Fish.new
fish.swim
fish.walk