class CreatePhaseRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :phase_roles do |t|
      t.references :phase, foreign_key: true
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
