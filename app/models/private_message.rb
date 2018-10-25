class PrivateMessage < ApplicationRecord
  has_many :recipients, class_name: "User"
  belongs_to :sender, class_name: "User"
end
