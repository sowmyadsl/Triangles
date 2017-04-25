require 'sinatra'
require 'sinatra/reloader'
require './lib/triangles'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  a = params.fetch('side_a').to_i
  b = params.fetch('side_b').to_i
  c = params.fetch('side_c').to_i
  triangle = Triangle.new(a,b,c)

  @message = if !triangle.istriangle?
    "it is not a triangle!"
  elsif triangle.equilateral?
    "it is equilateral!"
  elsif triangle.isosceles?
    "it is isosceles!"
  elsif triangle.scalene?
    "it is scalene!"
  end
  erb(:output)
end
