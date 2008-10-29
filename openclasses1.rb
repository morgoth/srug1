class Array
  def shuffle
    sort_by { rand }
  end
end

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
a.shuffle
#=> [2, 9, 4, 5, 1, 7, 8, 3, 6]
