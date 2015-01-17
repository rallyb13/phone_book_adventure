class Phone
  @@phones = []
  attr_reader(:another, :type, :person)

  define_method(:initialize) do |attributes|
    @another = attributes.fetch(:an)
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

  # define_method(:add_number) do |who|
  #   whom = who.name()
  #    @@phones.person().push(whom)
  # 
  #
  # end

end
