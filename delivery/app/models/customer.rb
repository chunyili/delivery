class Customer < ActiveRecord::Base

  has_one :user
<<<<<<< HEAD
  has_one :CustomerAdd, class_name: "CustomerAdd", foreign_key: "c_id"
=======
>>>>>>> a626c4b3984e3f743c082374be6e7cf5b2ba95c4
  has_many :sendPackages, class_name: "Package", foreign_key: "sender_id"
  has_many :receivePackages, class_name: "Package", foreign_key: "receiver_id"
end
