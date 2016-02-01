class Zipcode < ActiveRecord::Base
  self.primary_key = :zipcode
  has_one :store, class_name: "Store", foreign_key: "store_id", primary_key: "store_id"
end
