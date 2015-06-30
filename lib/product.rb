class Product
  attr_reader :name, :price_in_cents

  def initialize(name, price_in_cents)
    raise InvalidProductError, "Name is missing" if name.nil?
    raise InvalidProductError, "Price is missing" unless price_in_cents.kind_of?(Integer)
    @name = name
    @price_in_cents = price_in_cents
  end
end
