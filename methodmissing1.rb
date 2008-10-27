class Greetings
  def method_missing(method_name, *args)
    if method_name.to_s =~ /^say_hello_to_(.+)/
      name = $1.capitalize
      puts "Hello, #{name}!"
    else
      raise NoMethodError,
        "undefined method `#{method_name}' for #{self}"
    end
  end
end
