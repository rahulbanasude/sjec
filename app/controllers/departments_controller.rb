class DepartmentsController < ApplicationController
  before_action :authenticate_user!
  def index
  @departments = Department.friendly.all.order("name ASC")
  end

  private
  def department_params
    params.require(:department).permit(:name)

  end
end
