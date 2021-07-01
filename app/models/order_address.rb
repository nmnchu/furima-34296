class DonationAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture, :city, :house_number, :building_name, :price, :address, :phone_number, :user_id

  with_options presence: true do
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :prefecture_id, numericality: {other_than: 0, message: "can't be blank"}
    validates :phone_num, format: { with: /\A(0{1}\d{9,10})\z/ }
    validates :city
    validates :address
    validates :user_id
    validates :item_id
  end

  def save
    order = Order.create(price: item_id, user_id: user_id)
    Address.create(postal_code: postal_code, prefecture_id: prefecture_id, city: city, house_number: house_number, building_name: building_name, order: orde, phone_number: phone_number)
  end
end