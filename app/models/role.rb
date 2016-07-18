class Role < ApplicationRecord
  has_many :user_roles
  has_many :users, through: :user_roles
  has_many :role_policies
  has_many :administrator_roles, through: :role_policies
  has_many :managed_roles, through: :role_policies
end
