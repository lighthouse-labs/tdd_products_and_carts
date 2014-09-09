require_relative "spec_helper"

describe "Cart" do
  describe "#initialize" do
#    before :each do
#      # put code that is run before every test in this describe block
#      @cart = Cart.new
#    end

    subject :cart do
      Cart.new
    end

    it "should create a cart" do
      expect(cart.class).to eql Cart
    end

    it "should have an empty list of products" do
      expect(cart.products).to eql []
    end
  end

  describe "#add_product" do
    it "should add a product to the cart" do
      cart = Cart.new
      product = Product.new("Board game", 200)
      cart.add_product(product)
    end

    it "should raise an InvalidProductError if the param is not a Product" do
      cart = Cart.new
      expect {cart.add_product("boooo!")}.to raise_error InvalidProductError
    end
  end
end
