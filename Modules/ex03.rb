prc = lambda { puts "Olá Victor"}

def falar proc
    puts "#" * 10
    proc.call
    puts "#" * 10
end

falar(prc)
puts prc.class