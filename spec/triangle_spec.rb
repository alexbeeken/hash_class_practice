=begin
require('rspec')
require('triangle')
require('pry')

describe(Triangle) do
  describe("#type") do
    it('rejects not triangles') do
    @triangle = Triangle.new(2, 2, 8)
    expect(@triangle.type).to(eq("not triangle"))
  end
 end

end
=end