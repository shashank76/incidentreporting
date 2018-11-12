class CreateInvolveIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :involve_incident_types do |t|
      t.references :incident, foreign_key: true
      t.references :incident_type, foreign_key: true

      t.timestamps
    end
  end
end
