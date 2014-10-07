class Product
  attr_reader :name, :price_in_cents

  DEFAULT_PRICE = 0

  def initialize(name, price_in_cents = DEFAULT_PRICE)
    @name = name
    @price_in_cents = price_in_cents
  end
end