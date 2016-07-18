class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.references :school, foreign_key: true
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
