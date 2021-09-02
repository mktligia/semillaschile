class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def new
    @product = Product.find(params[:product_id])
    @cantidad = params[:cantidad]
    @order = current_user.orders.new
    @order.line_items.build

    @subtotal = @cantidad.to_i * @product.price_cents
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
    params.require(:order).permit(:status, :user_id, :user, :total_price_cents, :destinatario, :telefono, :email_d, :direccion_de_envio, :comuna, :ciudad, :codigo_postal, line_items_attributes: [:order_id, :product_id,:total_price_cents,:cantidad, :unit_price_cents])
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
