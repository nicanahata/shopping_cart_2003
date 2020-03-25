require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'
require 'pry'

class ShoppingCartTest < Minitest::Test

  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_cart_capacity
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal 30, cart.capacity
  end

  # def test_it_can_add_products
  #   product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
  #   product2 = Product.new(:meat, 'chicken', 4.50, '2')
  #   cart = ShoppingCart.new("King Soopers", "30items")
  #   cart.add_product(product1)
  #   assert_equal product1, cart.product
  #   cart.add_product(product2)
  #   assert_equal product2, cart.product
  # end

end
