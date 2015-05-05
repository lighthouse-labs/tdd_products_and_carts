class Product
  attr_reader :name, :price_in_cents
  def initialize(name: name, price_in_cents: price_in_cents)
    @name = name
    @price_in_cents = price_in_cents
  end
end
