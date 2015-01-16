class Contact
  @@contacts = []
  attr_reader(:name, :email, :phone, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:nm)
    @email = attributes.fetch(:em)
    @phone = attributes.fetch(:ph)
    @id = @@contacts.length().+(1)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:find) do |identification|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(identification)
        found_contact = contact
      end
    end
    found_contact
  end

  # define_method(:more_numbers) do |new_set|
  #   @@contacts.phone().push(new_set)
  # end

end
