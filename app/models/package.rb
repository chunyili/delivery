class Package < ActiveRecord::Base
  has_many :carries, class_name: "Carry", foreign_key: "pkg_id",primary_key: "package_id"
end
