class Cart
  attr_reader :products

  TAX = 0.1

  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_with_tax
    total_without_tax = products.inject(0) { |sum, product| sum += product.price_in_cents }
    # (total_without_tax * (1 + TAX)).to_i
    result = total_without_tax * (1 + TAX)
    result.to_i
  end
end
