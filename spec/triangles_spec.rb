require "triangles"
require "rspec"
require "pry"


describe 'Triangle#equilateral?' do

  it "returns true if all sides are more than 0 and equal" do
    triangle = Triangle.new(4,4,4)
    expect(triangle.equilateral?).to eq true
  end

  it "returns false if one of the sides is different" do
    triangle = Triangle.new(4,5,4)
    expect(triangle.equilateral?).to eq false
  end

end

describe "Triangle#isosceles?" do

  it "returns true if exactly two sides are equal" do
    triangle = Triangle.new(4,4,2)
    expect(triangle.isosceles?).to eq true
  end

  it "returns false if all sides are equal" do
    triangle = Triangle.new(4,4,4)
    expect(triangle.isosceles?).to eq true
  end

  it "returns false if all sides are different" do
    triangle = Triangle.new(2,3,4)
    expect(triangle.isosceles?).to eq false
  end

end

describe "Triangle#scalene?" do

  it "returns true if exactly no sides are equal" do
    triangle = Triangle.new(2,3,4)
    expect(triangle.scalene?).to eq true
  end

  it "returns false if all sides are equal" do
    triangle = Triangle.new(2,2,2)
    expect(triangle.scalene?).to eq false
  end

end

describe "Triangle#triangle?" do

  it "returns false if sum of lengths of any two sides of a triangle is less than or equal to length of the third side" do
    triangle = Triangle.new(2,2,8)
    expect(triangle.istriangle?).to eq false
  end

  it "returns false if the triangle is missing a side" do
    triangle = Triangle.new(2,3,0)
    expect(triangle.istriangle?).to eq false
  end

  it "returns true if the triangle is equilateral" do
    triangle = Triangle.new(3,3,3)
    expect(triangle.istriangle?).to eq true
  end

end
