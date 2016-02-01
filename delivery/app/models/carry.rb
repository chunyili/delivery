class Carry < ActiveRecord::Base
  self.primary_key = :pkg_id
<<<<<<< HEAD
  has_many :routes, class_name: "Route", :foreign_key => "route_id"
=======
  has_many :routes, class_name: "Route", :foreign_key => "route_id", :primary_key => "rut_id"
>>>>>>> a626c4b3984e3f743c082374be6e7cf5b2ba95c4

end
