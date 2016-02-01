class Customer < ActiveRecord::Base

  has_one :user
  has_many :sendPackages, class_name: "Package", foreign_key: "sender_id"
  has_many :receivePackages, class_name: "Package", foreign_key: "receiver_id"
end
