#!/usr/bin/env ruby

require 'rspec'
require 'triangle'

describe('Triangle') do
  it("will return 'Not a triangle' when any two sides of a triangle are less than or equal to the third side") do
    triangle = Triangle.new(1, 2, 3)
    expect(triangle.type).to(eq("Not a triangle"))
  end
end
