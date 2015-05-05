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
end
