class ApplicationsController < ApplicationController
    def index 
        @applications = Application.all 
    end 

    def new 
        @application = Application.new 
    end 

    def create
        @application = Application.new(app_params)
        if @application.save
            redirect_to applications_path, notice: "Successfully submitted your application to #{self.program.name}"
        else 
            render "new"
        end 
    end 

    def show 
        @application = Application.find(params[:id])
    end 

    def update
        @application = Application.find(params[:id])
        @application.update(app_params)
    end 

    def destroy
        @application = Application.find(params[:id])
        if @application.destroy 
            redirect_to applications_path, notice: "Successfully deleted application"
        else 
            notice: "Application may have been deleted already."
    end 

    private 
    
        def app_params
            params.require(:application).permit(
                :first_name,
                :last_name,
                :DOB,
                :grade,
                :gender,
                :school,
                :primary_doctor,
                :allergies,
                :medical_conditions,
                :medications,
                :emergency_contact_name,
                :emergency_contact_relationship,
                :emergency_contact_number,
                )
        end 
end
