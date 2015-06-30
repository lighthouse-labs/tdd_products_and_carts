class Cart
  attr_reader :products

  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_with_tax
    subtotal = 0
    products.each do |product|
      subtotal += product.price_in_cents
    end
    (subtotal * 1.12).to_i
  end
end
