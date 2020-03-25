class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_f
    @products = []
  end

  # def add_product(product)
  #   @products << product
  # end
  #
  # def total_products
  # end

end
