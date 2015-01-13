=begin
require('rspec')
require('parcels')
require('pry')

describe(Parcel) do
  describe("#volume") do
    it("returns volume of the three dimensions") do
      my_Parcel = Parcel.new(2, 2, 2)
      expect(my_Parcel.volume()).to(eq(8))
    end

    it("returns a cost to ship amount") do
      my_Parcel = Parcel.new(2, 2, 2)
      expect(my_Parcel.cost_to_ship()).to(eq(16))
    end
  end
end
=end
