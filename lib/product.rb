class Product
	attr_accessor :name, :price_in_cents
	def initialize(name, price_in_cents=0)
		@name = name
		@price_in_cents = price_in_cents
	end
end
