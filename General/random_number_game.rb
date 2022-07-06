jackpot = rand(1..10)

print 'Guess a number between 1 and 10: '
resposta = gets.chomp.to_i

while jackpot != 0
    if resposta > jackpot
        print 'Number is higher... Try again: '
        resposta = gets.chomp.to_i
    elsif resposta < jackpot
        print 'Number is lower... Try again: '
        resposta = gets.chomp.to_i
    elsif resposta == jackpot
        puts 'JACKPOT!!'
        jackpot = 0
    end
end