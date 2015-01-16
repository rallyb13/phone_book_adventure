require("rspec")
require("phone")

describe("Phone") do
  before do
    Phone.clear()
  end

  describe(".all") do
    it("starts without anything in it") do
      test_numbers = Phone.new({:mo => "111 111-2222", :ty => "mobile", :pr => "Bert"})
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a set of phone numbers, together, in the larger phone number list") do
      test_numbers = Phone.new({:mo => "111 111-2222", :ty => "mobile", :pr => "Bert"})
      test_numbers.save()
      expect(Phone.all()).to(eq([test_numbers]))
    end
  end

  describe(".clear") do
    it("empties the phone list of all saved content") do
      test_numbers = Phone.new({:mo => "111 111-2222", :ty => "mobile", :pr => "Bert"})
      test_numbers.save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#next") do
    it("returns the mobile/first number entered") do
      test_numbers = Phone.new({:mo => "444 444-5555", :ty => "home", :pr => "Ernie"})
      test_numbers.save()
      expect(test_numbers.next()).to(eq("444 444-5555"))
    end
  end

  describe("#type") do
    it("returns the work/second number entered") do
      test_numbers = Phone.new({:mo => "444 444-5555", :ty => "home", :pr => "Ernie"})
      test_numbers.save()
      expect(test_numbers.type()).to(eq("home"))
    end
  end

  describe("#person") do
    it("returns the home/third number entered") do
      test_numbers = Phone.new({:mo => "444 444-5555", :ty => "home", :pr => "Ernie"})
      test_numbers.save()
      expect(test_numbers.person()).to(eq("Ernie"))
    end
  end

end
