# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| password           | string              | null: false             |
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
| item                                | string     | null: false       |
| price                               | integer    | null: false       |
| text                                | text       | null: false       |
| category_id                         | integer    | foreign_key: true |
| status_id                           | integer    | foreign_key: true |
| user_id                             | integer    | foreign_key: true |
| postage_id                          | integer    | foreign_key: true |
| shipping_day_id                     | integer    | foreign_key: true |
| image                               | string     | null: false       |

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
| street address | string     | null: false       |
| user_id        | references | foreign_key: true |
| postal_code    | string     | null: false       |
| orders_id      | references | foreign_key: true |
| city           | string     | null: false       |

### Association

belongs_to :user

## orders table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| item_id     | references | null: false       |
| user_id     | references | null: false       |

### Association

- has_one :oder
- has_one :oder

