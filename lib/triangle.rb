class Triangle
  def initialize(a, b, c)
    @sides = [a, b, c]
  end

  def kind
    if self.invalid?
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      if @sides.all?{|s| s == @sides[0]}
        return :equilateral
      elsif @sides[0] == @sides[1] || @sides[0] == @sides[2] || @sides[1] == @sides[2]
        return :isosceles
      else
        return :scalene
      end
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

t = Triangle.new(2, 4, 0)
p t.kind
