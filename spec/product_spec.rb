require_relative "spec_helper"
# rspec spec/product_spec.rb
describe "Product" do

  it "should be created with a name and price" do
    muffin = Product.new("muffin", 199)
    expect(muffin.name).to eq("muffin")
    expect(muffin.price_in_cents).to eq(199)
  end

  it "should have a default price of 0" do
    muffin = Product.new("muffin")
    expect(muffin.price_in_cents).to eq(0)
  end

  it "should not create a product without a name" do
    expect { Product.new }.to raise_error ArgumentError
  end

end
