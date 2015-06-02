require_relative "spec_helper"

describe "Product" do

  it "should create a product with a name and price" do
    # setup the test case. invoke the method you are testing
    product = Product.new("Harry Potter", 1299)
    # check that your code works as expected
    expect(product.name).to eql "Harry Potter"
    expect(product.price_in_cents).to eql 1299
  end

  it "should raise BadProductException if missing name" do
    expect {
      product = Product.new(nil, 1299)
    }.to raise_error BadProductException, "Product must have name and price"
  end

  it "should raise BadProductException if missing price_in_cents" do
    expect {
      product = Product.new("Harry Potter", nil)
    }.to raise_error BadProductException, "Product must have name and price"
  end
end
