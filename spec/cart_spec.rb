require_relative "spec_helper"

describe "Cart" do

  before :each do
    # ruby code here runs before every test case inside this describe block
    @cart = Cart.new
  end
  # another way of accomplishing the above
  # let(:cart) { Cart.new }
  
  describe "#initialize" do
    it "should have empty list of products" do
      @cart = Cart.new
      # expect(cart.products.length).to eql 0
      # expect(cart.products).to be_empty
      # cart.products.empty?
      # expect(cart.products).to be_nil
      # cart.products.nil?
      expect(@cart.products).to eql []
    end
  end

  describe "#add_product" do

    it "should add a product to the list of products" do
      product = Product.new(name: "Book", price_in_cents: 1299)
      @cart = Cart.new
      @cart.add_product(product)
      # expect(cart.products.include?(product)).to eql true
      expect(@cart.products).to include product
    end
  end

  describe "#total_with_tax" do


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

  describe "#checkout" do

    it "should return the change due (negative integer) to the customer" do
      book = Product.new(name: "Book", price_in_cents: 1200)
      @cart.add_product(book)
      expect(@cart.checkout(1321)).to eql -1
    end

    it "should return the balance owing (positive integer) if the customer did not pay enough" do
      book = Product.new(name: "Book", price_in_cents: 1200)
      @cart.add_product(book)
      expect(@cart.checkout(1319)).to eql 1
    end

    it "should clear the cart when the amount was sufficient" do
      # book = Product.new(name: "Book", price_in_cents: 1200)
      # @cart.add_product(book)

      # For the remainder of this test case
      # any time #total_with_tax is called on @cart
      # return 1320
      # AND if #total_with_tax is not called in this test case at all, fail the test case
      # expect(@cart).to receive(:total_with_tax).and_return(1320)
      # total_with_tax = 1320
      @cart.checkout(1321)
      expect(@cart.products).to eql []
    end

    it "should apply payments to balance owing if previous payment was made" do
      book = Product.new(name: "Book", price_in_cents: 1200)
      @cart.add_product(book)
      @cart.checkout(600)
      expect(@cart.checkout(800)).to eql -80
    end
  end

end
