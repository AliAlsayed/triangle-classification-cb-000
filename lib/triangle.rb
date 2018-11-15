class Triangle
  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def kind
    if invalid?
      begin
        raise TriangleError
      end
  end

  def invalid?
    @sides.any?{|x| x == 0} || (@sides[0] + @sides[1]) < @sides[2] || (@sides[1] + @sides[2]) < @sides[0] || (@sides[0] + @sides[2]) < @sides[1] 
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle!"
    end
  end
end
