ActiveAdmin.register Paper do

	form multipart: true do |f|
	    f.inputs "add papers" do
	      f.input :department_id, as:  :select, :collection => Department.all
	      f.input :semester_id, as: :select, :collection => option_groups_from_collection_for_select(Department.all, :semesters, :name, :id, :name)
	      f.input :subject_id, as: :select, :collection => option_groups_from_collection_for_select(Semester.all, :subjects, :name, :id, :name )
	    f.input :name
			f.input :paper, as: :file
	    end
	    f.actions
	  end
	permit_params :name, :subject_id, :department_id, :semester_id, :paper
end
