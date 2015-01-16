class Contact
  @@contacts = []
  attr_reader(:name, :email, :phone)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:nm)
    @email = attributes.fetch(:em)
    @phone = attributes.fetch(:ph)
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

end
