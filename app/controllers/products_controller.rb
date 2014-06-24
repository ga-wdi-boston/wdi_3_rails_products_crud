class ProductsController < ApplicationController

  def index
      # Create an instance variable, @products, that will contain an "Array" of all the products.
      @products = Product.all
  end
end
