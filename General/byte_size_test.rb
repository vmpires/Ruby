require 'objspace'

sample1 = []
sample2 = []
sample3 = []

for i in 1..1_000_000 do
    sample1 << "507f191e810c19729de860ea"
end

for i in 1..500_000 do
    sample2 << "507f191e810c19729de860ea"
end

for i in 1..100_000 do
    sample3 << "507f191e810c19729de860ea"
end

size1 = ObjectSpace.memsize_of(sample1)
size2 = ObjectSpace.memsize_of(sample2)
size3 = ObjectSpace.memsize_of(sample3)


puts "############## Byte Size Test ################"
puts "Sample 1: 1 million Id's => #{size1} bytes."
puts "Sample 1: 1 million Id's => #{size1/1000000} Mb."
puts
puts "Sample 2: 500 thousand Id's => #{size2} bytes."
puts "Sample 2: 500 thousand Id's => #{size2/1000000} Mb."
puts
puts "Sample 3: 100 thousand Id's => #{size3} bytes."
puts "Sample 3: 100 thousand Id's => #{size3/1000000} Mb."