class SemestersController < ApplicationController
before_action :authenticate_user!
  def index
    department = Department.friendly.find(params[:department_id])
    @semesters = department.semesters

  end

  # GET /semesters/1
  # GET /semesters/1.json
  def show
   @semester = Semester.find(params[:id])
 rescue ActiveRecord::RecordNotFound
  flash[:notice] = "No Records Found"
  redirect_to root_path
  end


private
  def semester_params
      params.require(:semester).permit(:name, :department_id)
    end

end
