module IncidentsHelper

	def options_for_select_incident_types
		IncidentType.all.map{ |p| [p.name,p.id]}
	end

	def options_for_select_school
		School.all.map{ |p| [p.name,p.id]}
	end

	def options_for_select_location
		[['On school campuses and grounds',0],['During transportation to and from school',1],['At school-sponsored events',2],['More details',3]]
	end

	def options_for_select_role
		[['Student','student'], ['Teacher','teacher'], ['Other Staff','other staff'], ['Parent','parent'], ['Community Member','community member']]
	end

end
