require('rspec')
require('myhash')
require('pry')

describe(MyHash) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
  end

  describe("#fetch") do
    it("retrieves a stored value by its key with multiple entries") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "furry")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
      expect(test_hash.fetch("dog")).to(eq("furry"))
    end
  end

  describe("#fetch") do
    it("returns false when given a value") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "furry")
      expect(test_hash.fetch("cute")).to(eq(false))
      expect(test_hash.fetch("furry")).to(eq(false))
    end
  end

  describe("#fetch") do
    it("returns false when given a non-existing key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "furry")
      expect(test_hash.fetch("cue")).to(eq(false))
    #  expect(test_hash.fetch(7)).to(eq(false))
    end
  end

  describe("#fetch") do
    it("returns false when given a non-existing key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "furry")
      expect(test_hash.fetch("cue")).to(eq(false))
      #  expect(test_hash.fetch(7)).to(eq(false))
    end
  end

  # ===================================================


  describe("#merge") do
    it("returns all unique keys with associated values") do
      test_hash = MyHash.new()
      test_hash2 = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "furry")
      test_hash2.store("lion", "big")
      test_hash2.store("bear", "friendly")
      expect(test_hash.merge(test_hash2)).to(eq([["kitten", "cute"], ["dog", "furry"], ["lion", "big"], ["bear", "friendly"]]))
    end
  end

  describe("#merge") do
    it("over-writes the values of identical key values with argument hash") do
      test_hash = MyHash.new()
      test_hash2 = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "furry")
      test_hash2.store("kitten", "big")
      test_hash2.store("bear", "friendly")
      expect(test_hash.merge(test_hash2)).to(eq([["kitten", "big"], ["dog", "furry"], ["bear", "friendly"]]))
    end
  end

  #=====================================================

  describe("#get_array") do
    it("returns the array") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.get_array()).to(eq(["kitten", "cute"]))
  end
end

end
