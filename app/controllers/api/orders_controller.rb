class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
  end

  def create
    @carted_products = current_user.carted_products.where(status: 'Carted')


    @order = Order.new(
                      user_id: current_user.id
                      )

    @order.store_totals

    if @order.save
      @carted_products.update_all(status: 'Purchased')
      render 'show.json.jbuilder'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
