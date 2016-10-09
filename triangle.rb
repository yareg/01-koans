# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, 'All lengths must be positive'
end

  args = [a, b, c].sort # this lets us get at the longest side of the triangle

  unless args[0] + args[1] > args[2]
    raise TriangleError, 'Longest length may not be greater than the sum of the other lengths'
  end

  if args[0] - args[1] > args[2]
    raise TriangleError, 'Longest length must be greater than the difference of the other two lengths'
  end

  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
