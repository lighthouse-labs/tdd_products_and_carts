class Cart
  attr_reader :products, :money_paid

  TAX = 0.1

  def initialize
    @products = []
    @money_paid = 0
  end

  def add_product(product)
    @products << product
  end

  def total_with_tax
    total_without_tax = products.inject(0) { |sum, product| sum += product.price_in_cents }
    # (total_without_tax * (1 + TAX)).to_i
    result = total_without_tax * (1 + TAX)
    result.to_i
  end

  def checkout(amount)
    @money_paid += amount
    change_or_balance = total_with_tax - @money_paid
    if change_or_balance <= 0
      @products = []
    end
    change_or_balance
  end
end
