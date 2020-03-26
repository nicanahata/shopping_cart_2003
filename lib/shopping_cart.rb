class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    product_total = 0
    products.each {|product| product_total += product.quantity.to_i }
    product_total
  end

  def is_full?
    total_number_of_products > @capacity
  end

  def products_by_category(category)
    found_products = []
    @products.each do |product|
      if product.category == category
        found_products << product
      end
    end
    found_products
  end

  def details
    { :name => @name, :capacity => @capacity}
  end

end
