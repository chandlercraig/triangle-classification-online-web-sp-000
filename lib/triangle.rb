class Triangle
  attr_accessor :side1, :side2, :side3, :side_arr

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side_arr = [side1, side2, side3]
  end


  def kind
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end

  raise TriangleError if @side_arr.each {|s| s <= 0}
  # raise TriangleError if @side1+@side2<=@side3 || @side2+@side3<=@side1 || @side1+@side3<=@side2

  end

  class TriangleError < StandardError
  end


end
