class Product
  attr_reader :name
  attr_reader :price_in_cents

  def initialize(name, price_in_cents)
    if name.nil? || price_in_cents.nil?
      raise BadProductException, "Product must have name and price"
    end
    @name = name
    @price_in_cents = price_in_cents
  end
end
