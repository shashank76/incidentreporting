class CreateIncidentDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :incident_details do |t|
      t.references :incident, foreign_key: true
      t.string :location
      t.datetime :date
      t.string :reporter_name
      t.string :reporter_email
      t.string :reporter_phone
      t.string :role

      t.timestamps
    end
  end
end
