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
    products.count.to_i * @quantity.to_i 
  end

  # def is_full?
  # end

  # def products_by_category
  # end

end
