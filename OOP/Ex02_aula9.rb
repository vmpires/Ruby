class Carro
    def get_km(params)
        puts find_km(params)
    end
    
    private

    def find_km(params)
        return /[0-9]{2}km\/h/.match(params)
    end
end

params = "Um fusca de cor amarela viaja a 80km/h"

fusca = Carro.new
fusca.get_km(params)