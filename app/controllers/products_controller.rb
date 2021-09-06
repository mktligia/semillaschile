class ProductsController < ApplicationController
  def index
    @products= policy_scope(Product).order(created_at: :desc)
  
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    authorize @product

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Producto was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to product_url, notice: "Producto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_user
    @product = Product.find(params[:id])
    authorize @restaurant
  end

  def product_params
    params.require(:product).permit(:name, :content, :address, :country, :price_cents, :photo, :category)
  end


end
