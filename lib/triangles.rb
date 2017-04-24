class Triangle

  attr_accessor :side_a
  attr_accessor :side_b
  attr_accessor :side_c

  def initialize(side_a, side_b, side_c)
    self.side_a = side_a
    self.side_b = side_b
    self.side_c = side_c
  end

  def equilateral?
    return false unless self.triangle?
    side_a == side_b &&
    side_b == side_c &&
    side_c == side_a
  end

  def isosceles?
  return false unless self.triangle?
    if self.equilateral? || self.scalene?
      false
    else
      true
    end
  end

  def scalene?
    return false unless self.triangle?
    side_a != side_b &&
    side_b != side_c &&
    side_c != side_a
  end

  def triangle?
    return false if side_a <= 0 || side_b <= 0 || side_c <= 0
     if side_a + side_b <= side_c ||
        side_b + side_c <= side_a ||
        side_c + side_a <= side_b
      false
    else
      true
    end
  end

end
