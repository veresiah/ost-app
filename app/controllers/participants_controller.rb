class ParticipantsController < ApplicationController
  before_action :require_login
  def index 
      @participants = Participant.all
  end 

  def new
      @participant = Participant.new  
  end 

  def create 
    @participant = Participant.new(participant_params)
      if @participant.save
          redirect_to participants_path, notice: "Successfully added a new participant"
      else 
          render "new"
      end 
  end  

  def edit
    @participant = Participant.find(params[:id])
  end

  def show 
    @participant = Participant.find(params[:id])
  end   

  def update
    @participant = Participant.find(params[:id])
      if @participant.update(participant_params)
          redirect_to participant_path,(@participant), notice: "Successfully updated this participant"
      else 
          render "edit"
      end 
  end 

  def destroy 
    @participant = Participant.find(params[:id])
    @participant.destroy
          redirect_to participants_path, notice: "Participant was successfully deleted."
  end 

  private 

  def participant_params
      params.require(:participant).permit(
      :first_name,
      :last_name,
      :DOB,
      :grade,
      :gender,
      :school,
      )
  end 
end