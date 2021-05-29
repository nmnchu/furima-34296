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
* has_many :comments
- has_many :orders

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| name                                | string     | null: false       |
| price                               | integer    | null: false       |
| text                                | text       | null: false       |
| category_id                         | integer    | null: false       |
| status_id                           | integer    | null: false       |
| user                                | references | foreign_key: true |
| postage_id                          | integer    | null: false       |
| shipping_day_id                     | integer    | null: false       |
| prefecture_id                       | integer    | null: false       |

### Association

- belongs_to :user
- has_many :comments
- has_one :order

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| item        | references | foreign_key: true |
| user        | references | foreign_key: true |
| text        | text       | null: false       |

### Association

- belongs_to :user
- belongs_to :item

## addresses table

| Column         | Type       | Options           |
|----------------|------------|-------------------|
| postal_code    | string     | null: false       |
| order          | references | foreign_key: true |
| city           | string     | null: false       |
| phone_number   | string     | null: false       |
| prefecture_id  | integer    | null: false       |
| house_number   | string     | null: false       |
| build_number   | string     |                   |

### Association

belongs_to :order

## orders table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| item        | references | foreign_key: true |
| user        | references | null: false       |
### Association

- has_one :address
- belongs_to :user
- belongs_to :item

