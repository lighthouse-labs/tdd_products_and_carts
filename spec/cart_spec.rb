require_relative "spec_helper"

describe "Cart" do
  let(:cart) { Cart.new }  # runs block before every it test case. Assigns result of block to local variable

  describe "#add_product" do

    it "should have an empty list of products for a new cart" do
      # Setup
      # cart = Cart.new
      # Expectation
      expect(cart.products).to eql []
      # expect(cart.products).to match_array []
      # expect(cart.products).to have(0).things
    end

    it "should add a product to the cart" do
      # Setup
      # cart = Cart.new
      product = Product.new("Book", 1299)
      cart.add_product(product)
      # Expectations
      expect(cart.products).to eql [product]
    end
  end

  describe "#total_with_tax" do
    it "should return 0 if there are no products in the cart" do
      expect(cart.total_with_tax).to eql 0
    end

    it "should return the total with tax of 12%" do
      # Setup
      book = Product.new("Book", 100)
      mouse = Product.new("Mouse", 900)
      # Force Cart#products to return the book and mouse
      expect(cart).to receive(:products).and_return([book, mouse])
      # When cart.products is called in the next few lines
      # Don't run #products
      # Instead return [book, mouse]
      # Excpctations
      expect(cart.total_with_tax).to eql 1120
    end
  end
end
