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
    #I know this is terrible code, will refactor later
    name = JSON.parse(params["name"])
    desc = JSON.parse(params["description"])
    picture = JSON.parse(params["picture"])
    user_id = JSON.parse(params["user_id"]).to_i
    @item = Item.create(name: name, description: desc, picture: picture, user_id: user_id)
    render json: @item
  end

  def edit

  end


end
