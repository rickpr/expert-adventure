class RolePolicy < ApplicationRecord
  belongs_to :administrator_role, class_name: 'Role'
  belongs_to :managed_role, class_name: 'Role'
end
