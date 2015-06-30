require_relative "spec_helper"

describe "Product Test Cases" do
  describe "creation" do
    it "should create a new product" do
      # Setup stage
      product = Product.new("Book", 1299)
      # Expect something to happen
      expect(product.name).to eql "Book"
      expect(product.price_in_cents).to eql 1299
    end

    it "should throw an exception if the name is missing" do
      # Setup stage
      expect { Product.new(nil, 1299) }.to raise_error InvalidProductError, "Name is missing"
    end

    it "should throw an exception if the price is missing" do
      # Setup stage
      expect { Product.new("Book", nil) }.to raise_error InvalidProductError, "Price is missing"
      expect { Product.new("Book", "not an integer") }.to raise_error InvalidProductError, "Price is missing"
    end
  end
end
