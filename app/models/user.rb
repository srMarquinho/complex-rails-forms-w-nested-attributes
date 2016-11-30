class User < ApplicationRecord
  #TO ASK: Why not has_one :address?
  # Or has_one t
  has_one :address
  accepts_nested_attributes_for :address, allow_destroy: true
  validates_presence_of :email
end
