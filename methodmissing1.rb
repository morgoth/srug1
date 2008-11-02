class SupermarketTeller
  def method_missing(method_name, *args)
    if method_name.to_s =~ /lidl/
      puts "Lidl jest tani!"
    else
      raise NoMethodError,
        "undefined method `#{method_name}' for #{self}"
    end
  end
end
