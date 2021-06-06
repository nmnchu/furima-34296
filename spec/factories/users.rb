FactoryBot.define do
  factory :user do
    nickname              {"タロウ"}
    email                 {Faker::Internet.free_email}
    password              {"aaa4567"}
    password_confirmation {"aaa4567"}
    first_name            {"山田"}
    last_name             {"太郎"}
    first_name_kana       {"ヤマダ"}
    last_name_kana        {"タロウ"}
    birthday              {"2000-1-1"}
  end
end