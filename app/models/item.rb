class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :shipping_day
  belongs_to :prefecture
  belongs_to :status
  belongs_to :postage
  belongs_to :user

  has_one_attached :image
  has_many :comments
  has_one :order

  with_options presence: true do
    validates :name
    validates :image
    validates :category_id
    validates :postage_id
    validates :text
    validates :status_id
    validates :prefecture_id
    validates :shipping_day_id
    validates :price, inclusion: { in: 300..9_999_999 }, format: { with: /\A[0-9]+\z/ }
  end

  with_options numericality: {other_than: 1 } do
    validates :category_id
    validates :postage_id
    validates :status_id
    validates :prefecture_id
    validates :shipping_day_id
  end
end