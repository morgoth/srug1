array = [1, 7, 2, 8, 7, 10, 15, 2, 11]

array.index { |element| element > 10 }
#=> 6
array.index(8)
#=> 3
