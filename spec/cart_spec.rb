require_relative "spec_helper"

describe "Cart" do

  let(:cart) { Cart.new }
  # Before each test case, create a local variable called cart = Cart.new

  describe "#initialize" do
    it "should have no products when the cart is created" do
      # expectations
      expect(cart.products).to be_empty
      # expect calls: cart.products.empty?
      # expect(cart.products).to be_nil
      # expect calls: cart.products.nil?
    end
  end

  describe "#add_product" do
    it "should add a product to the cart" do
      # prep
      tooth_paste = Product.new("Tooth paste", 299)
      cart.add_product(tooth_paste)

      # expectations
      expect(cart.products).to eql([tooth_paste])
      # expect(cart.products).to match_array([tooth_paste])

      # Not so great, because if we add the product twice by mistake
      # the test still passes
      # expect(cart.products.include?(tooth_paste)).to be_true
      # expect(cart.products).to be_include(tooth_paste)
      # expect(cart.products).to include(tooth_paste)

    end

    # brittle test
    # it "should return the total with tax" do
    #   cart = Cart.new
    #   tooth_paste = Product.new("Tooth paste", 100)
    #   brush = Product.new("Brush", 200)
    #   cart.add_product(tooth_paste)
    #   cart.add_product(brush)
    #   
    #   expect(cart.total_with_tax).to eql 336
    # end
  end

  describe "#total_with_tax" do
    it "should return the total with tax" do
      tooth_paste = Product.new("Tooth paste", 100)
      brush = Product.new("Brush", 200)
      expect(cart).to receive(:products).and_return([tooth_paste, brush])
      # Line above is the functional equivalent of
      # cart.products = [tooth_paste, brush]

      # I expect the lines below to call the method products on cart
      # I am hacking the method products inside cart to return [tooth_paste, brush]

      expect(cart.total_with_tax).to eql 336
    end

    it "should return 0 if there are no products in the cart" do
      expect(cart.total_with_tax).to eql 0
    end
  end
end
