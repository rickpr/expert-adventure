class Phase < ApplicationRecord
  belongs_to :next_phase, class_name: 'Phase'
  has_one :previous_phase, as: :next_phase
  has_many :phase_roles
  has_many :roles, through: :phase_roles
end
