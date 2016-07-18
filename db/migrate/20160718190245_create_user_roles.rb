class CreateUserRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_roles do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true
      t.references :unit, foreign_key: true
      t.references :school, foreign_key: true
      t.boolean :has_dossier

      t.timestamps
    end
  end
end
