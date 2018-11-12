class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :details
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
