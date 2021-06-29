class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @items = Item.order(id: :DESC)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :category_id, :status_id, :price, :postage_id, :shipping_day_id, :prefecture_id, :image, :text).merge(user_id: current_user.id)
  end

end