class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit]
  

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to new_item_path
    else
      render :new
    end

  end

  private

  def items_params
    params.require(:item).permit(:name, :category_id, :status_id, :price, :postage_id, :shipping_day_id, :prefecture_id, :image).merge(user_id: current_user.id)
  end

end