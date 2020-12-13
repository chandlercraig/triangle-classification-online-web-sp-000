class Triangle
  attr_accessor :side_arr

  @side_arr = []

  def initialize (side1, side2, side3)
    @side_arr = [side1, side2, side3]
    @side_arr.sort!
  end


  def kind
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
 end

  class TriangleError < StandardError
  end


end
