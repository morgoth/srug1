class Duck
  def quack
    "Quack!"
  end
end
class Dog
  def quack
    "Quack!"
  end
end
def make_it_quack(duck)
  puts duck.quack
end

duck = Duck.new
dog = Dog.new

make_it_quack(duck)
# Quack!
make_it_quack(dog)
# Quack!
