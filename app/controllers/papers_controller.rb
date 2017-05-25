class PapersController < ApplicationController
  before_action :authenticate_user!
  def index

  		subject = Subject.friendly.find(params[:subject_id])
  		@papers = subject.papers

  	end


  	def show
  	@paper = Paper.friendly.find(params[:id])
  	rescue ActiveRecord::RecordNotFound
    flash[:notice] = "No Records Found"
    redirect_to subject_path
  	end

    private

    	def paper_params
    		params.require(:paper).permit(:subject_id, :name, :semester_id, :department_id, :paper)
    	end



end
