class Triangle
  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def kind
    
  end

  def invalid?
    @sides.any?{|x| x == 0}
  end

  class TriangleError < StandardError
    
  end
end
