class Api::ProductsController < ApplicationController

  def all_products_action
    @products = Product.all
    render 'all_products_view.json.jbuilder'
  end

  def first_product_action
    @product = Product.find(1)
    render 'first_product_view.json.jbuilder'
  end

  def second_product_action
    @product = Product.find(2)
    render 'second_product_view.json.jbuilder'
  end
end
