class Duck
  def quack
    "Quack!"
  end
end

duck = Duck.new
recorder = OpenStruct.new
recorder.quack = duck.quack

def make_it_quack(duck)
  puts duck.quack
end

make_it_quack(duck)
# Quack!
make_it_quack(recorder)
# Quack!
