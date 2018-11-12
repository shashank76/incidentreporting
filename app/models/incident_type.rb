class IncidentType < ApplicationRecord
 	has_many :incidents, through: :involve_incident_types
	 validates :name, presence: true, uniqueness: true
 	
end
