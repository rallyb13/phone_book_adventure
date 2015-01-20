class Contact
  @@contacts = []
  attr_reader(:name, :email, :telephone, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:nm)
    @email = attributes.fetch(:em)
    @telephone = attributes.fetch(:ph)
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

  define_singleton_method(:search) do |ident|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.name().eql?(ident)
        found_contact = contact
      end
    end    
    found_contact
  end

  define_method(:add_number) do |number|
    if @telephone.class == String
      @telephone = [@telephone]
    end
    @telephone.push(number)
  end
end
