class AddPhaseToUserRole < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_roles, :phase, foreign_key: true
  end
end
