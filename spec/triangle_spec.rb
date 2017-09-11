#!/usr/bin/env ruby

require 'rspec'
require 'triangle'

describe('Triangle') do
  it("will return 'Not a triangle' when any two sides of a triangle are less than or equal to the third side") do
    triangle = Triangle.new(1, 2, 3)
    expect(triangle.type).to(eq("Not a triangle"))
  end
  it("will return 'equilateral' when all sides are equal to each other") do
    triangle = Triangle.new(4, 4, 4)
    expect(triangle.type).to(eq("Equilateral"))
  end
  it("will return 'Isosceles' when exactly two sides are equal") do
    triangle = Triangle.new(3, 3, 5)
    expect(triangle.type).to(eq("Isosceles"))
  end
  it('will return "Scalene" when all sides are equal') do
    triangle = Triangle.new(5, 8, 4)
    expect(triangle.type).to(eq("Scalene"))
  end
end
