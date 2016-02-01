class Store < ActiveRecord::Base
  has_one :store_add, class_name: "StoreAdd", foreign_key: "s_id", primary_key: "store_id"
end
