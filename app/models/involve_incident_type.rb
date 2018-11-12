class InvolveIncidentType < ApplicationRecord
  belongs_to :incident
  belongs_to :incident_type
end
