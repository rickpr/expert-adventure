class CreateRecusals < ActiveRecord::Migration[5.0]
  def change
    create_table :recusals do |t|
      t.references :reviewer, foreign_key: true
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
