class OrdersController < ApplicationController
  def new
    @product = Product.find(params[:id])
  end

  def create
  end

  def edit
  end

  def update
  end
end
