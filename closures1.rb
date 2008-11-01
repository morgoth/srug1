def say_something
  something = "Hello!"
  lambda { puts something }
end

result = say_something
something = "Bye!"
result.call
# Hello!
