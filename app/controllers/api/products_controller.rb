class Api::ProductsController < ApplicationController

  def index
    @products = Product.all

    search_term = params[:search]
    discount = params[:discount]
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]

    @products = @products.where('name iLIKE ?', "%#{search_term}%") if search_term
    @products = @products.where('price < ?', 250) if discount == 'true'
    @products = @products.order(price: :desc) if sort_attribute == 'price' && sort_order == 'desc'
    @products = @products.order(:price) if sort_attribute == 'price'

    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          image_url: params[:image_url],
                          description: params[:description]
                          )
    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: 'The product was destroyed.'}
  end
end
