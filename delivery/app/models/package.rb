class Package < ActiveRecord::Base
<<<<<<< HEAD
  has_many :carries, class_name: "Carry", foreign_key: "pkg_id"
=======
  has_many :carries, class_name: "Carry", foreign_key: "pkg_id",primary_key: "package_id"
>>>>>>> a626c4b3984e3f743c082374be6e7cf5b2ba95c4
end
