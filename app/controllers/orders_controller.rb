class OrdersController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @product = Product.find(params[:product_id])
    @order.product = @product
    @order.user = current_user
    @order.status = "En Proceso"
    @order.save
    redirect_to order_path(@order)
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
  end

  def update
  end


  private

  def order_params
    params.require(:order).permit(:content)
  end
end