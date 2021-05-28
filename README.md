# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false,unique: true|
| encrypted_password | string              | null: false             |
| nickname           | string              | null: false             |
| first_name         | string              | null: false             |
| last_name          | string              | null: false             |
| first_name_kana    | string              | null: false             |
| last_name_kana     | string              | null: false             |
| birthday           | date                | null: false             |


### Association

* has_many :items
* has_many :comment
* has_one :addresses
* has_one :card

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| name                                | string     | null: false       |
| price                               | integer    | null: false       |
| text                                | text       | null: false       |
| category_id                         | integer    | null: false       |
| status_id                           | integer    | null: false       |
| user_id                             | integer    | foreign_key: true |
| postage_id                          | integer    | null: false       |
| shipping_day_id                     | integer    | null: false       |
| image                               | string     | null: false       |
| shipping_area                       | integer    | null: false       |

### Association

- belongs_to :user
- has_many :comment
- belongs_to :orders

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| item_id     | references | foreign_key: true |
| user_id     | references | foreign_key: true |
| text        | text       | null: false       |

### Association

- belongs_to :user
- belongs_to :item

## addresses table

| Column         | Type       | Options           |
|----------------|------------|-------------------|
| user_id        | references | foreign_key: true |
| postal_code    | string     | null: false       |
| orders_id      | references | foreign_key: true |
| city           | string     | null: false       |
| phone_number   | references | foreign_key: true |
| prefectures    | integer    | null: false       |
| house_number   | string     | null: false       |
| build_number   | string     | null: false       |

### Association

belongs_to :user

## orders table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| item_id     | integer	   | null: false, foreign_key: true |
| user_id     | integer	   | null: false, foreign_key: true |

### Association

- has_one :oder
- has_one :oder

