jQuery ->
 semesters = $('#subject_semester_id').html()
 $('#subject_department_id').change ->
  department = $('#subject_department_id :selected').text()
  options = $(semesters).filter("optgroup[label='#{department}']").html()
  if options
   $('#subject_semester_id').html(options)
  else
   $('#subject_semester_id').empty()
