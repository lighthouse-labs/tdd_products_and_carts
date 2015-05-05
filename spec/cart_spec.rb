require_relative "spec_helper"

describe "Cart" do

  describe "#initialize" do
    it "should have empty list of products" do
      cart = Cart.new
      # expect(cart.products.length).to eql 0
      # expect(cart.products).to be_empty
      # cart.products.empty?
      # expect(cart.products).to be_nil
      # cart.products.nil?
      expect(cart.products).to eql []
    end
  end

  describe "#add_product" do

    it "should add a product to the list of products" do
      product = Product.new(name: "Book", price_in_cents: 1299)
      cart = Cart.new
      cart.add_product(product)
      # expect(cart.products.include?(product)).to eql true
      expect(cart.products).to include product
    end
  end
end
