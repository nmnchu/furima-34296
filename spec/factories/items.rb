FactoryBot.define do
  factory :item do
    name                 {"電卓"}
    text                 {"電卓です"}
    category_id          {2}
    status_id            {1}
    prefecture_id        {1}
    shipping_day_id      {1}
    postage_id           {1}
    price                {5000}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('app/assets/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end