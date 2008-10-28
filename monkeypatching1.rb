class Array
  alias_method :old_index, :index

  def index(object = nil)
    if object.nil?
      self.each_with_index do |element, index|
        return index if yield element
      end
      nil
    else
      old_index(object)
    end
  end
end
