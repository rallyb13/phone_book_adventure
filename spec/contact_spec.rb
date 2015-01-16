require("rspec")
require("contact")

describe("Contact") do
  before do
    Contact.clear()
  end

  describe(".all") do
    it("starts without anything in it") do
      test_buddy = Contact.new({:nm => "James Brown", :em => "GFofSoul@gmail.com", :ph => "777 321-!!!!"})
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves new contacts into list") do
      test_buddy = Contact.new({:nm => "Ahnold S.", :em => "AlBBack@msn.com", :ph => "555 LAV-ISTA"})
      test_buddy.save()
      expect(Contact.all()).to(eq([test_buddy]))
    end
  end

  describe(".clear") do
    it("empties the list of all saved content") do
      test_buddy = Contact.new({:nm => "Nobody Memorable", :em => "", :ph => "555 000-0000"})
      test_buddy.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#name") do
    it("returns the name of the contact") do
      test_buddy = Contact.new({:nm => "HAL", :em => "all of them", :ph => "010 001-1101" })
      expect(test_buddy.name()).to(eq("HAL"))
    end
  end

  describe("#email") do
    it("returns the email of the contact") do
      test_buddy = Contact.new({:nm => "Benjamin Herson", :em => "benjaminherson@gmail.com", :ph => "503 915-3698"})
      expect(test_buddy.email()).to(eq("benjaminherson@gmail.com"))
    end
  end

  describe("#phone") do
    it("returns the phone number of the contact") do
      test_buddy = Contact.new({:nm => "Random Whistling Guy", :em => "namethattune.yahoo.com", :ph => "123 232-3454"})
      expect(test_buddy.phone()).to(eq("123 232-3454"))
    end
  end




end
