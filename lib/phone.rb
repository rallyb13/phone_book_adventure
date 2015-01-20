class Phone
  @@phones = []
  attr_reader(:another)

  define_method(:initialize) do |attributes|
    @another = attributes.fetch(:an)
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

end
