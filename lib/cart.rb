class Cart
  attr_reader :products

  def initialize
    @products = []
  end

  def add_product(product)
    raise InvalidProductError, "Product should be a Product" if !product.is_a? Product
    @products << product
  end
end
