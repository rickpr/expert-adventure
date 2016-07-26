class Recusal < ApplicationRecord
  belongs_to :reviewer,  class_name: 'UserRole'
  belongs_to :candidate, class_name: 'UserRole'
end
