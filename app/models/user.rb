class User < ApplicationRecord
  belongs_to :city
  has_many :gossips
  has_and_belongs_to_many :private_messages
end
