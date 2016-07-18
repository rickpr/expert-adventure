class UserRole < ApplicationRecord
  belongs_to :user
  belongs_to :role
  has_many :role_policies, through: :role
  has_many :administrator_roles, through: :role_policies
  has_many :managed_roles, through: :role_policies
  belongs_to :unit
  belongs_to :school

  def can_manage?(user)
    managed_roles.include?(user.role)
  end
end
