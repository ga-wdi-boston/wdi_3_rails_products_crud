class ProductsController < ApplicationController

  # GET /products
  def index
    @products = Product.all 
  #    render text: "in the index controller products = #{@products.to_json}"
  end

  # GET /products/:id
  def show
    @product = Product.find(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # POST /products
  def create
    # Construct, instantiate a new Product instance
    # from the form fields, which live in the params
    # hash.
    product = Product.new(product_params)

    if product.save
      # It saved, so lets see this new product
      # render :show, status: :created, location: @product
      redirect_to products_path
    else
      render :new
    end
  end

  # to UPDATE a product.
  # IT WILL NOT UPDATE A PRODUCT!!!
  def edit
    @product = Product.find(params[:id])
  end

  # Update an existing model, Product.
  # ProductsController#update
  def update
    # Get the Product to update
    @product = Product.find(params[:id])
    
    # Using Strong Params 
    # Update this product, Product#update
    if @product.update(product_params)
      redirect_to @product, notice: "You have updated the #{@product.name}"
    else
      # No worky, try again, show me the form you.
      render :edit
    end
  end

  # DELETE /products/:id
  # ProductsController#destroy
  def destroy
    @product = Product.find(params[:id])

    # Product#destroy
    @product.destroy

    # Show all products
    redirect_to products_path, notice: "You have deleted the product"
  end

  private

  # Define which params are allowed to 
  # be used to create a Product
  def product_params
    params.require(:product).permit([:name, :description, :price])
  end








end