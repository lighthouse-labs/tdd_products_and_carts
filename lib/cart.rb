class Cart
  attr_reader :products

  TAX_PERCENTAGE = 12

  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_with_tax
    price_before_tax = 0
    products.each do |product|
      price_before_tax += product.price_in_cents
    end
    tax_amount = price_before_tax * (TAX_PERCENTAGE / 100.0)
    (price_before_tax + tax_amount).to_i
  end
end
