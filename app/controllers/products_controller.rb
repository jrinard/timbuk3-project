class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params) #generates a new product object with the parameters returned from the product_params method.
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path # redirecting to /products
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id]) #we do NOT need to use strong parameters. We can safely pull the id from the params.
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product successfully deleted!"
    redirect_to products_path
  end

# needed for create and update - needs to be on bottom
  private #Strong parameters use a private method to permit only designated parameters to be passed for our model. Therefore, any malicious request sent with malicious parameters will not successfully process since the private method can not be accessed.
    def product_params
      params.require(:product).permit(:name, :description, :origin, :cost, :style, :image) #example of multiple fields
    end
end
