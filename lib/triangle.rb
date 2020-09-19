class Triangle
  # write code here
  attr_reader :s1, :s2, :s3
  def initialize(s1,s2,s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if s1 == s2 && s1 == s3
      :equilateral
    elsif s1 == s2 || s1 == s3 || s2 == s3
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
  real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  [a, b, c].each do |side|
    real_triangle << false if side <= 0 
  raise TriangleError if real_triangle.include?(false)
  end
end

  class TriangleError < StandardError
   # triangle error code
   if 
 end
end
