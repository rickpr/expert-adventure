class User < ApplicationRecord
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :uploads
  has_many :recusals, as: :reviewer
end
