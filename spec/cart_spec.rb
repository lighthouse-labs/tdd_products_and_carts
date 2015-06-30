require_relative "spec_helper"

describe "Cart" do
  describe "#add_product" do
    # Block runs before each 'it' block.
    before :each do
      @cart = Cart.new
    end

    it "should have an empty list of products for a new cart" do
      # Setup
      # cart = Cart.new
      # Expectation
      expect(@cart.products).to eql []
      # expect(cart.products).to match_array []
      # expect(cart.products).to have(0).things
    end

    it "should add a product to the cart" do
      # Setup
      # cart = Cart.new
      product = Product.new("Book", 1299)
      @cart.add_product(product)
      # Expectations
      expect(@cart.products).to eql [product]
    end
  end
end
