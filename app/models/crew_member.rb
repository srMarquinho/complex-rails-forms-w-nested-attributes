class CrewMember < ApplicationRecord
  belongs_to :starship, dependent: :destroy
end
