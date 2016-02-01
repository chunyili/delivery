class Carry < ActiveRecord::Base
  self.primary_key = :pkg_id
  has_many :routes, class_name: "Route", :foreign_key => "route_id", :primary_key => "rut_id"

end
