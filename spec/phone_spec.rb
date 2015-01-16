require("rspec")
require("contact")
require("phone")

describe("Phone") do
  describe(".all") do
    it("starts without anything in it") do
      test_numbers = Phone.new({:mo => "111 111-2222", :wo => "222 222-3333", :ho => "333 333-4444"})
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a set of phone numbers, together, in the larger phone number list") do
      test_numbers = Phone.new({:mo => "111 111-2222", :wo => "222 222-3333", :ho => "333 333-4444"})
      test_numbers.save()
      expect(Phone.all()).to(eq([test_numbers]))
    end
  end

  describe(".clear") do
    it("empties the phone list of all saved content") do
      test_numbers = Phone.new({:mo => "111 111-2222", :wo => "222 222-3333", :ho => "333 333-4444"})
      test_numbers.save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#mobile") do
    it("returns the mobile/first number entered") do
      test_numbers = Phone.new({:mo => "444 444-5555", :wo => "555 555-6666", :ho => "666 666-7777"})
      test_numbers.save()
      expect(test_numbers.mobile()).to(eq("444 444-5555"))
    end
  end

  describe("#work") do
    it("returns the work/second number entered") do
      test_numbers = Phone.new({:mo => "444 444-5555", :wo => "555 555-6666", :ho => "666 666-7777"})
      test_numbers.save()
      expect(test_numbers.work()).to(eq("555 555-6666"))
    end
  end

  describe("#home") do
    it("returns the home/third number entered") do
      test_numbers = Phone.new({:mo => "444 444-5555", :wo => "555 555-6666", :ho => "666 666-7777"})
      test_numbers.save()
      expect(test_numbers.home()).to(eq("666 666-7777"))
    end
  end

end
