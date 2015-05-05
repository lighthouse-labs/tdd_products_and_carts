# Intro to TDD Demo

We want to build a simple (probably the simplest ever) e-commerce application.

This application keeps track of products and shopping carts. The application is built in TDD style (tests first).

### Data

```
Product
  #name
  #price_in_cents

Cart
  #products
  #amount_paid
```

### Actions

- `Product#new` Create a product. Throw an exception if the name or price are missing.
- `Cart#add_product` Add a product to the cart.
- `Cart#total_with_tax` Returns the total with tax for all products in the cart.
- `Cart#checkout(amount)` Customer pays `amount`. If the amount is enough to cover total, return the change as a negative integer, otherwise, return the balance owing as a positive integer. (Teacher note: opportunity to demo stubbing out total_with_tax to avoid a more complicated test setup)

