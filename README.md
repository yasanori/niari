
<!-- 
#ER図

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string|null: false|
|price|integer|null: false|
|introduce|text|null: false|
|user_id|integer|null: false,foreign_key: true|
|brand_id|integer|foreign_key: true|
|size_id|integer|foreign_key: true|
|commodity_condition_id|integer|foreign_key: true|
|shippig_charge_id|integer|foreign_key: true|
|shippig_method_id|integer|foreign_key: true|
|prefecture_id|integer|null: false|
|shippig_day_id|integer|foreign_key: true|
|purchase|integer||
|buyer|integer||


### Association
- belongs_to :user
- belongs_to :category
<!-- - belongs_to :size -->
<!-- - belongs_to :commodoty_condition -->
- belongs_to :brand
<!-- - belongs_to :shipping_charge -->
<!-- - belongs_to :shipping_mathod -->
<!-- - belongs_to :shipping_day -->
- has_many :item_images dependent: :destroy
- belongs_to_active_hash: prefecture
- belongs_to_active_hash: commodity_condition
- belongs_to_active_hash: shipping_method
- belongs_to_active_hash :shipping_day
- belongs_to_active_hash :shipping_charge
- belongs_to_active_hash :size -->
