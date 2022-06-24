def potencia(numero, expoente)
    return numero ** expoente
end

puts "Digite um número" 

numero = gets.chomp.to_i

puts "Digite um expoente" 

expoente = gets.chomp.to_i

puts "#{numero} elevado a #{expoente} = #{potencia(numero, expoente)}"