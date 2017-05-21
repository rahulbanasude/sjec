ActiveAdmin.register Subject do

	form do |f|
	  f.inputs "add subject" do
	    f.input :department_id, as:  :select, :collection => Department.all
	    f.input :semester_id, as: :select, :collection => option_groups_from_collection_for_select(Department.all, :semesters, :name, :id, :name)
	    f.input :name
	  end
	  f.actions
	end
	permit_params :name, :department_id, :semester_id
end
