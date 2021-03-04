require 'pry'
class Triangle
  attr_accessor :side_array, :equilateral, :isosceles, :scalene
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side_array = [side1, side2, side3]
    @side_array = @side_array.sort {|a, b| b <=> a}
  end

  def kind
#    binding.pry
    if @side_array.any? {|i| i <= 0} || @side_array[1] + @side_array[2] <= @side_array[0]
      raise TriangleError
    elsif @side2 == @side3 && @side2 == @side1
      :equilateral
    elsif @side_array[1] == @side_array[0] || @side_array[1] == @side_array[2] && @side_array[0] != @side_array[2]
      :isosceles
    else
      :scalene
    end
  end



 class TriangleError < StandardError
 end
end
