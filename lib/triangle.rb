#!/usr/bin/env ruby

class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def type
    if @side1 + @side2 <= @side3
      return "Not a triangle"
    elsif @side2 + @side3 <= @side1
      return "Not a triangle"
    elsif @side3 + @side1 <= @side2
      return "Not a triangle"
    elsif (@side1 == @side2) & (@side2 == @side3)
      return "Equilateral"
    elsif (@side1 == @side2) | (@side2 == @side3) | (@side3 == @side1)
      return "Isosceles"
    else
      return "Scalene"
    end
  end
end
