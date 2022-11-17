# テーブル設計

## users テーブル

| Column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| nickname           | string  | null: false              |
| email              | string  | null: false, unique:true |
| encrypted_password | string  | null: false              |
| favemember_id      | integer | null: false              |
| chemistry          | text    | null: false              |
| profile            | text    | null: false              |

### Association

- has_many :collections
- has_many :trades
- has_many :comments

## collections テーブル

| Column     | Type       | Options                       |
| ---------- | ---------- | ----------------------------- |
| member_id  | integer    | null: false                   |
| album_id   | integer    | null: false                   |
| version_id | integer    | null: false                   |
| others     | text       |                               |
| user       | references | null: false, foreign_key: true|
| trade      | references | null: false, foreign_key: true|

### Association

- belongs_to :user
- has_one :trade
- belongs_to_active_hash :member
- belongs_to_active_hash :album

## trades テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| content       | text       | null: false                    |
| type_id       | integer    | null: false                    |
| heterogeneous | string     |                                |
| user          | references | null: false, foreign_key: true |
| collection    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :collection
- has_many :comments
- belongs_to_active_hash :type

## comments テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| content       | text       | null: false                    |
| user          | references | null: false, foreign_key: true |
| trade         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :trade
