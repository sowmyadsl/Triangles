class Triangle

  define_method (:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:equilateral?) do
    @side_a == @side_b &&
    @side_b == @side_c

  end

  define_method(:isosceles?) do
    @side_a == @side_b ||
    @side_b == @side_c ||
    @side_c == @side_a
  end

  define_method(:scalene?) do
    @side_a != @side_b &&
    @side_b != @side_c &&
    @side_c != @side_a
  end

  define_method(:istriangle?) do
  if @side_a <= 0 || @side_b <= 0 || @side_c <= 0
    return false
    elsif @side_a + @side_b <= @side_c ||
        @side_b + @side_c <= @side_a ||
        @side_c + @side_a <= @side_b
      false
    else
      true
    end
  end

end
