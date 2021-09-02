class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def new
    @product = Product.find(params[:product_id])
    @cantidad = params[:cantidad]
    @order = current_user.orders.new
  end

  def create
    @order = current_user.orders.new(order_params)
    @order.status = "En Proceso"
    @order.line_items.build(order_params[:line_items])
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def show
    
  end

  def edit
  end

  def update
  end


  private

  def order_params
    params.require(:order).permit(:status, :user_id, :user, :total_price_cents, 
                                    line_items: [:order_id, :cantidad, :product_id, :unit_price, :total_price_cents])
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
