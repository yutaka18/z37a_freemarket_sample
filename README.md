# DB設計

## usersテーブル
|column|type|options|
|------|----|-------|
|nickname|string|null: false, validates: length: { maximun: 20 }|
|mail_address|string|null: false, unique: true|
|password|string|null: false|
|phone_number|string|unique: true|
|profile|text||

### association
- has_many : items
- has_many : likes
- has_one : destination

## destinationテーブル
|column|type|options|
|------|----|-------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birthday|date|null: false|
|post_number|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string||

### association
- belongs_to : user

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
|name|string|null: false, index: true, validates: length: { maximun: 40 }|
|content|text|null: false,index: true, validates: length: { maximun: 1000 }|
|price|integer|null: false,index: true|
|condition|integer|null: false,index: true|
|size|string|null: false,index: true|
|category_large_id|references|null: false, foreign_key: true|
|category_medium_id|references|null: false, foreign_key: true|
|category_small_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|burden|integer|null: false,index: true|
|shipping_method|integer|null: false|
|from_prefecture|integer|null: false|
|shipping_days|integer|null: false|
|buyer_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### association
- belongs_to : user
- has_many : likes
- has_many : images
- has_many : category
- has_one : trading_status
- has_one : brand

## trading_statusテーブル
|column|type|options|
|------|----|-------|
|status|integer|null: false|
|item_id|references|null: false, foreign_key: true|

### association
- belongs_to : item

## imagesテーブル
|column|type|options|
|------|----|-------|
|image_url|string|null: false|
|item_id|references|null: false, foreign_key: true|

### association
- belongs_to : item

## categorysテーブル
|column|type|options|
|------|----|-------|
|name|string|null: false,index: true|

### association
- belongs_to : item
- has_many : category_path

## category_pathテーブル
|column|type|options|
|------|----|-------|
|category_large_id|references|null: false, foreign_key: true|
|category_medium_id|references|null: false, foreign_key: true|
|category_small_id|references|null: false, foreign_key: true|

### association
- belongs_to : categorys

## brandsテーブル
|column|type|options|
|------|----|-------|
|name|string|index: true|

### association
- belongs_to : items


