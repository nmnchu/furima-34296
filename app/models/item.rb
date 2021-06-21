class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category_id
  belongs_to :shipping_day_id
  belongs_to :prefecture_id
  belongs_to :status_id
  belongs_to :postage_id
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

    with_options numericality: {other_than: 1 } do
      validates :category_id
      validates :postage_id
      validates :status_id
      validates :prefecture_id
      validates :shipping_day_id
    end
  end
end