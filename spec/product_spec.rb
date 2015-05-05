require_relative "spec_helper"

describe "Product" do

  describe '#new' do

    it 'works' do # a test case
      product = Product.new(name: 'Book', price_in_cents: 1299)
      expect(product.name).to eql 'Book'
      expect(product.price_in_cents).to eql 1299
    end

    it 'throws exception if name or price are missing' do
      expect {
        product = Product.new
      }.to raise_error InvalidProductError, "Invalid product. Must have name and price in cents"
    end
  end

end
