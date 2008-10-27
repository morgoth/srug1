class Module
  def my_attr_accessor(*symbols)
    symbols.each do |symbol|
      module_eval %{def #{symbol}
                      @#{symbol}
                    end}
      module_eval %{def #{symbol}=(value)
                      @#{symbol} = value
                    end}
    end
  end
end
