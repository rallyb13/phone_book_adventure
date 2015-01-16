class Phone
  @@phones = []
  attr_reader(:mobile, :work, :home)

  define_method(:initialize) do |attributes|
    @mobile = attributes.fetch(:mo)
    @work = attributes.fetch(:wo)
    @home = attributes.fetch(:ho)
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
