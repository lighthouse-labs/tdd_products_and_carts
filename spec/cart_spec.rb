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

  describe "#total_with_tax" do

    before :each do
      # ruby code here runs before every test case
      @cart = Cart.new
    end
    # another way of accomplishing the above
    # let(:cart) { Cart.new }

    it "should return 0 if cart is empty" do
      expect(@cart.total_with_tax).to eql 0
    end

    it "should return the total with tax if there are products" do
      book = Product.new(name: "Book", price_in_cents: 1200)
      pencil = Product.new(name: "Pencil", price_in_cents: 100)
      @cart.add_product(book)
      @cart.add_product(pencil)
      expect(@cart.total_with_tax).to eql 1430
    end
  end

end
