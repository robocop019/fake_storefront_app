class Api::OrdersController < ApplicationController
  def index
    if current_user
      @orders = current_user.orders
      render 'index.json.jbuilder'
    else
      render json: {message: 'Must be logged in to view orders.'}
    end
  end

  def create
    if current_user

      @order = Order.new(
                        user_id: current_user.id,
                        product_id: params[:product_id],
                        quantity: params[:quantity]
                        )

      @order.store_totals

      if @order.save
        render 'show.json.jbuilder'
      else
        render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {message: 'Must be logged in to place an order.'}
    end
  end
end
