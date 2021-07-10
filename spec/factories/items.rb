FactoryBot.define do
  factory :item do
    name                 {"電卓"}
    text                 {"電卓です"}
    category_id          {2}
    status_id            {2}
    prefecture_id        {2}
    shipping_day_id      {2}
    postage_id           {2}
    price                {5000}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('app/assets/images/search.png'), filename: 'search.png')
    end
  end
end