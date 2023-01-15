# ProtoSpaceのER図
## usersテーブル
| Column             | Type   | Options            |
| ------------------ | ------ | ------------------ |
| email              | string | null: false,UNIQUE |
| encrypted_password | string | null: false        |
| name               | string | null: false        |
| profile            | string | null: false        |
| occupation         | string | null: false        |
| position           | string | null: false        |

### Association
- has_many :comments
- has_many :prototypes

##　prototypeテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | -------------------------------|
| title              | string     | null: false                    |
| catch_copy         | text       | null: false                    |
| concept            | text       | null: false                    |
| user               | references | null: false,foreign_key: true  |

### Association
- has_many :comments
- belongs_to :users

##　commentsテーブル

| Column             | Type       | Options                        |
| ------------------ | -----------| ------------------------------ |
| content            | text       | null: false                    |
| prototype          | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :comments
- belongs_to :users