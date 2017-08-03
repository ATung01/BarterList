class ItemController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end

  def show
    @items = Item.find(params[:id])
    render json: @items
  end

  def create
    @item = Item.create(params)
  end


end
