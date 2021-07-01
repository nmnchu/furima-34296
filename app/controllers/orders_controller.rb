class OrdersController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def new
    @order_address = OrderAddress.new
  end

  def create
    @donation_address = DonationAddress.new(donation_params)
    if @donation_address.valid?
      @donation_address.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order_address).permit(:postal_code, :prefecture_id, :city, :house_number, :building_name, :phone_number).merge(user_id: current_user.id)
  end

end
