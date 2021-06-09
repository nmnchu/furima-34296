class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  private

  def items_params
    params.require(:item).permit(:name, :category_id, :status_id, :price, :postage_id, :shipping_day_id, :prefecture_id, :image)
  end

end