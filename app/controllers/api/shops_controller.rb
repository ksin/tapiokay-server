class Api::ShopsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Shop.all
  end

  def show
    render json: Shop.find(params[:id])
  end

  def create
    shop = Shop.new(shop_params)

    if shop.save
      render json: shop, status: :created
    else
      render json: shop.errors, status: :unprocessable_entity
    end
  end

  def update
    shop = Shop.find(params[:id])

    if shop.update_attributes(shop_params)
      render json: shop
    else
      render json: shop.errors, status: :unprocessable_entity
    end
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    head :no_content
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :location)
  end
end