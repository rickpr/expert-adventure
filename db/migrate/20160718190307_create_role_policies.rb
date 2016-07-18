class CreateRolePolicies < ActiveRecord::Migration[5.0]
  def change
    create_table :role_policies do |t|
      t.references :administrator_role, foreign_key: true
      t.references :managed_role, foreign_key: true
      t.string :within

      t.timestamps
    end
  end
end
