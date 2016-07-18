class Section < ApplicationRecord
  belongs_to :role
  has_many :uploads
end
