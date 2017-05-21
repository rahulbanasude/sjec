class PapersController < ApplicationController
  def index

  		subject = Subject.find(params[:subject_id])
  		@papers = subject.papers

  	end


  	def show
  	@paper = Paper.find(params[:id])
  	rescue ActiveRecord::RecordNotFound
    flash[:notice] = "No Records Found"
    redirect_to subject_path
  	end

    private

    	def paper_params
    		params.require(:paper).permit(:subject_id, :name, :semester_id, :department_id, :paper)
    	end



end
