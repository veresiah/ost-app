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
            redirect_to programs_path(@program), notice: "Successfully added a new program"
        else 
            render "new"
        end 
    end  

    def edit
    end

    def show 
    end   

    def update
    end 

    def destroy 
    end 
end
