class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image
  has_many :comments
  has_one :order

  with_options presence: true do
    validates :name
    validates :image
    validates :description
    validates :category
    validates :condition
    validates :deliverycharge
    validates :prefecture
    validates :shipping_day
    validates :price, inclusion: { in: 300..9_999_999 }, format: { with: /\A[0-9]+\z/ }
  end
end