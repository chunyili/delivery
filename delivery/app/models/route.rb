class Route < ActiveRecord::Base

<<<<<<< HEAD
  has_many :instances, class_name: "Instance", foreign_key: "route_id"
=======
  has_many :instances, class_name: "Instance", foreign_key: "route_id", primary_key: "route_id"
  has_one :dept_store, class_name: "Store", foreign_key: "store_id", primary_key: "dept"
  has_one :arvl_store, class_name: "Store", foreign_key: "store_id", primary_key: "arvl"
>>>>>>> a626c4b3984e3f743c082374be6e7cf5b2ba95c4
end
