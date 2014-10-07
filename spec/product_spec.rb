require_relative "spec_helper"

# Test that I can use the initializer
muffin = Product.new("muffin", 199)
# Make sure these values are stored inside the object

if muffin.name != "muffin"
  @fail = true
  puts "FAIL! Name should be 'muffin' but got #{muffin.name} instead"
end

if muffin.price_in_cents != 199
  @fail = true
  puts "FAIL! Name should be '199' but got #{muffin.price_in_cents} instead"
end

if !@fail
  puts "PASSED"
end


# Test that price defaults to 0
@fail = false
coffee = Product.new("coffee")

if coffee.price_in_cents != 0
  @fail = true
  puts "FAIL! Price should default to 0, but I got #{coffee.price_in_cents}"
end


if !@fail
  puts "PASSED"
end
