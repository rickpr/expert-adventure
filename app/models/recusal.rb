class Recusal < ApplicationRecord
  belongs_to :reviewer, class_name: 'User'
  belongs_to :candidate, class_name: 'User'
end
