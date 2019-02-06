class Job < ApplicationRecord
  belongs_to :employer, required: false, class_name: "User"
  has_many :applications
end
