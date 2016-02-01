class Store < ActiveRecord::Base
<<<<<<< HEAD
=======
  has_one :store_add, class_name: "StoreAdd", foreign_key: "s_id", primary_key: "store_id"
>>>>>>> a626c4b3984e3f743c082374be6e7cf5b2ba95c4
end
