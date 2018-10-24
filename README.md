# DB設計

## usersテーブル
|column|type|options|
|------|----|-------|
|nickname|string|null: false|
|mail_address|string|null: false, unique: true|
|password|string|null: false|
|phone_number|string|unique: true|
|post_number|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string||
|profile|text||
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_year|date|null: false|
|birth_month|date|null: false|
|birth_day|date|null: false|

### association
- has_many : items
- has_many : likes

## likesテーブル
|column|type|options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### association
- belongs_to : user
- belongs_to : item

## itemsテーブル
|column|type|options|
|------|----|-------|
|name|string|null: false,index: true|
|content|text|null: false,index: true|
|price|integer|null: false,index: true|
|item_condition|integer|null: false,index: true|
|trading_status|integer|null: false,index: true|
|user_id|references|null: false, foreign_key: true|

### association
- belongs_to : user
- has_many : likes
- has_many : images
- has_one : delivery
- has_one : category_large
- has_one : size
- has_one : brand

## imagesテーブル
|column|type|options|
|------|----|-------|
|image_url|string|null: false|
|item_id|references|null: false, foreign_key: true|

### association
- belongs_to : item

## deliveryテーブル
|column|type|options|
|------|----|-------|
|burden|integer|null: false,index: true|
|shipping|integer|null: false|
|from_prefecture|integer|null: false|
|shipping_days|integer|null: false|
|item_id|references|null: false, foreign_key: true|

### association
- belongs_to : item

## category_largeテーブル
|column|type|options|
|------|----|-------|
|name|string|null: false,index: true|
|item_id|references|null: false, foreign_key: true|

### association
- belongs_to : item
- has_many : category_mediums

## category_mediumテーブル
|column|type|options|
|------|----|-------|
|name|string|index: true|
|category_large_id|references|null: false, foreign_key: true|

### association
- has_many : sizes
- has_many : category_smalls
- belongs_to : category_large

## category_smallテーブル
|column|type|options|
|------|----|-------|
|name|string|index: true|
|category_medium_id|references|null: false, foreign_key: true|

### association
- belongs_to : category_medium

## sizeテーブル
|column|type|options|
|------|----|-------|
|size|string|null: false,index: true|
|item_id|references|null: false, foreign_key: true|
|category_medium_id|references|null: false, foreign_key: true|

### association
- belongs_to : item_id
- belongs_to : category_medium_id

## brandsテーブル
|column|type|options|
|------|----|-------|
|name|string|index: true|
|item_id|references|null: false, foreign_key: true|

### association
- belongs_to : items
