FactoryBot.define do
  factory :order_address do
  token           {'111111'}
  postal_code     {'111-1111'}
  prefecture_id   {2}
  city            {'横浜市緑区'}
  house_number    {'青山1-1-1'}
  building_name   {'柳ビル103'}
  phone_number    {'08011111111'}
  end
end
