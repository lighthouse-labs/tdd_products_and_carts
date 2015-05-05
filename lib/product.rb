class InvalidProductError < StandardError
end

class Product
  attr_reader :name, :price_in_cents

  def initialize(name: name, price_in_cents: price_in_cents)
    if name.nil? || price_in_cents.nil?
      raise InvalidProductError, "Invalid product. Must have name and price in cents"
    end
    @name = name
    @price_in_cents = price_in_cents
  end
end
