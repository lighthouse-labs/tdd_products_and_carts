require_relative "spec_helper"

describe "Product" do
  describe "#initialize" do
    it "should be initialized with a name and price in cents" do
      Product.new("Ice Cream", 200)
    end

    it "should raise an error if the price was not given" do
      expect {Product.new("Ice Cream")}.to raise_error ArgumentError
    end
  end
end
# Unit Tests
