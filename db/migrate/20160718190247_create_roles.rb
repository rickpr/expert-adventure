class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.integer :rank
      t.boolean :admin
      t.boolean :candidate

      t.timestamps
    end
  end
end
