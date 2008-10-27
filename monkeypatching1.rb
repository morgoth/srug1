class Array
  alias_method :old_index, :index

  def index(obj = nil)
    if obj.nil?
      self.each_with_index do |e, i|
        return i if yield e
      end
      nil
    else
      old_index(obj)
    end
  end
end
