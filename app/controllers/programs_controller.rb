class ProgramsController < ApplicationController
    def index 
        @programs = Program.all
    end 

    def new
        @program = Program.new  
    end 

    def create 
        @program = Program.new(program_params)
        if @program.save
            redirect_to programs_path, notice: "Successfully added a new program"
        else 
            render "new"
        end 
    end  

    def edit
        @program = Program.find(params[:id])
    end

    def show 
        @program = Program.find(params[:id])
        redirect_to program_path(@program)
    end   

    def update
        @program = Program.find(params[:id])
        if @program.update(program_params)
            redirect_to program_path(@program), notice: "Successfully updated this program"
        else 
            render "edit"
        end 
    end 

    def destroy 
        @program = Program.find(params[:id])
        if @program.destroy
            redirect_to programs_path, notice: "Program was successfully deleted."
        else 
            notice: "Program does not exist."
        end 
    end 

    private 

    def program_params
        params.require(:program).permit(
        :name
        :agency
        :contact_number
        :grade_level
        :address
        :capacity
        )
    end 
end
