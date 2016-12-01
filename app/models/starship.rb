class Starship < ApplicationRecord
  # inverse_of fixes error message: Crew members starship must exist
  has_many :crew_members, inverse_of: :starship
  accepts_nested_attributes_for :crew_members, allow_destroy: true,
                                               reject_if: ->(attr) { attr['name'].blank? }
end
