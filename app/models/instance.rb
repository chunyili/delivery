class Instance < ActiveRecord::Base
  self.primary_key = :instance_id
  #belongs_to :route, class_name: "Route", foreign_key: "route_id", primary_key: "route_id"
end
