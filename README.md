# README

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :lesson_class
- has_many :G_reports

## lesson_class テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| classname          | string | null: false |
| season             | string | null: false |
| year               | string | null: false |

### Association

- belongs_to :users
- has_many :students

## students テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| student_name       | string | null: false |

### Association

- belongs_to :lesson_class
- has_many :studentsdata
- has_many :G_reports

## G_reports テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| comment_n          | text   | null: false |

### Association

- belongs_to :users
- has_many :students

## studentsdata テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| student_name       | string | null: false |
| classname          | string | null: false |
| student_school     | string | null: false |
| student_school_year| string | null: false |
| student_old        | string |

### Association

- belongs_to :students