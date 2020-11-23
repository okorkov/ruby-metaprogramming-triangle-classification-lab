class Triangle
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

    @case1 = @side1 == @side2 && @side1 == @side3
    @case2 = @side1 == @side2 || @side2 == @side3 || @side3 == @side1
    @case3 = @side1 != @side2 && @side2 != @side3

    @all_positive = @side1 > 0 && @side2 > 0 && @side3 > 0
    @check_sides = ((@side1 + @side2) > @side3) && ((@side1 + @side3) > @side2) && ((@side2 + @side3) > @side1)

    if !@all_positive || !(@case1 || @case2 || @case3) || !@check_sides
      raise TriangleError
    end
  end

  def kind
    if @case1
      :equilateral
    elsif @case2
      :isosceles
    else 
      :scalene
    end
  end


  class TriangleError < StandardError
    puts "you've got a triange error dude, get it together. WhAt ArE YoU StUpId oR sOmEtHiNg?"
  end
end
