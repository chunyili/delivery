class Instance < ActiveRecord::Base
  self.primary_key = :instance_id
<<<<<<< HEAD
  belongs_to :route, class_name: "Route", foreign_key: "route_id"
=======
  #belongs_to :route, class_name: "Route", foreign_key: "route_id", primary_key: "route_id"
>>>>>>> a626c4b3984e3f743c082374be6e7cf5b2ba95c4
end
