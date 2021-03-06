require("rspec")
require("contact")
require("phone")

describe("Phone") do
  before do
    Phone.clear()
  end

  describe(".all") do
    it("starts without anything in it") do
      test_numbers = Phone.new({:an => "111 111-2222"})
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a set of phone numbers, together, in the larger phone number list") do
      test_numbers = Phone.new({:an => "111 111-2222"})
      test_numbers.save()
      expect(Phone.all()).to(eq([test_numbers]))
    end
  end

  describe(".clear") do
    it("empties the phone list of all saved content") do
      test_numbers = Phone.new({:an => "111 111-2222"})
      test_numbers.save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#another") do
    it("returns the mobile/first number entered") do
      test_numbers = Phone.new({:an => "444 444-5555"})
      test_numbers.save()
      expect(test_numbers.another()).to(eq("444 444-5555"))
    end
  end

  # describe("#add_number") do
  #   it("will give the contact a number when none has been listed") do
  #     test_buddy = Contact.new({:nm => "James Brown", :em => "GFofSoul@gmail.com", :ph => []})
  #     test_number = Phone.new({:an => "324 980-!!!!"})
  #     test_buddy.add_number(test_number)
  #     expect(test_buddy.another()).to(eq(test_number))
  #   end
  # end

end
