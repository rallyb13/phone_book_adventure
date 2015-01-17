require("rspec")
require("phone")
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

  describe("#id") do
    it("identifies contact by that contact's unique place in the list") do
      test_buddy = Contact.new({:nm => "Lizzie", :em => "firstpair@gmail.com", :ph => "555 555-5555"})
      test_buddy.save()
      test_buddy2 = Contact.new({:nm => "Lee", :em => "secondpair@msn.com", :ph => "667 766-6776"})
      test_buddy2.save()
      expect(test_buddy2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("uses the id to find the specific contact") do
      test_buddy = Contact.new({:nm => "Lauren", :em => "thirdpair@gmail.com", :ph => "333 333-3333"})
      test_buddy.save()
      test_buddy2 = Contact.new({:nm => "Kathryn", :em => "fourthpair@msn.com", :ph => "444 444-4444"})
      test_buddy2.save()
      expect(Contact.find(test_buddy2.id())).to(eq(test_buddy2))
    end
  end





  # describe("#more_numbers") do
  #   # this first spec doesn't actually call this method, but I wanted to check this before writing the method, just to be sure I'm tracking the logic right
  #   it("adds multiple numbers for a given contact") do
  #     test_numbers = Phone.new({:mo => "777 321-!!!!", :wo => "555 555-6666", :ho => "666 666-7777"})
  #     test_buddy = Contact.new({:nm => "James Brown", :em => "GFofSoul@gmail.com", :ph => test_numbers})
  #     test_buddy.save()
  #     expect(test_buddy.phone()).to(eq(test_numbers))
  #   end
    # it("will add numbers to the already listed number") do
    #   test_buddy = Contact.new({:nm => "Yo-Yo Ma", :em => "celloshots4eva@yahoo.com", :ph => "999 999-9999"})
    #   test_buddy.save()
    #   test_numbers = Phone.new({:mo => "999 999-9999", :wo => "555 555-6666", :ho => "666 666-7777"})
    #   test_buddy.more_numbers(test_numbers)
    #   expect(test_buddy.phone()).to(eq(test_numbers))
    # end
  #
  # end


end
