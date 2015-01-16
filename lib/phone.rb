class Phone
  @@phones = []
  attr_reader(:next, :type, :person)

  define_method(:initialize) do |attributes|
    @next = attributes.fetch(:nx)
    @type = attributes.fetch(:ty)
    @person = attributes.fetch(:pr)
  end

  define_singleton_method(:all) do
    @@phones
  end

  define_method(:save) do
    @@phones.push(self)
  end

  define_singleton_method(:clear) do
    @@phones = []
  end

  # define_method(:add_numbers) do
  # end

end
