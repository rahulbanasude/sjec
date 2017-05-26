class SubjectsController < ApplicationController
  before_action :authenticate_user!
  def index


		semester = Semester.find(params[:semester_id])
		@subjects = semester.subjects

	end



	def show

	@subject = Subject.find(params[:id])
	rescue ActiveRecord::RecordNotFound
  flash[:notice] = "No Records found"
 redirect_to semester_path
	end

    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.friendly.find(params[:id])
    end


	def subject_params
		params.require(:subject).permit(:name, :semester_id)
	end

end
