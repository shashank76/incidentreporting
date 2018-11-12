class IncidentsController < ApplicationController
  	def index
  		@incident = Incident.new
  		@incident_images = @incident.images.build
  	end

  	def new		
		@incident = Incident.new
		@incident_images = @incident.images.build
		@incident_detail = @incident.build_incident_detail
		@involve_persons = @incident.involve_persons.build
		@observers = @incident.observers.build
		@involve_incident_type = @incident.involve_incident_types.build
	end

	def create
		@incident = Incident.create(incident_params)
		if @incident.save
			respond_to do |format|
          		format.html { redirect_to incidents_path, notice: 'Thank for reporting the incident.' }
    		end
		else
			respond_to do |format|
          		format.html { redirect_to incidents_path, notice: @incident.errors.full_messages.first }
    		end
		end
	end
	private
	def incident_params
		params.require(:incident).permit(:details,:school_id, incident_detail_attributes: [:id, :location,:date,:reporter_name,:reporter_email,:reporter_phone,:role,:_destroy], images_attributes: [:id, :file, :imageable_id,:imageable_type,:_destroy], involve_incident_types_attributes: [:id, :incident_id, :incident_type_id,:_destroy], involve_persons_attributes: [:id, :name, :email,:phone,:_destroy], observers_attributes: [:id, :name, :email,:phone,:_destroy])
	end
end
