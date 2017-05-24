jQuery ->
 semesters = $('#paper_semester_id').html()
 $('#paper_department_id').hover ->
  department = $('#paper_department_id :selected').text()
  options = $(semesters).filter("optgroup[label='#{department}']").html()
  if options
   $('#paper_semester_id').html(options)
  else
   $('#paper_semester_id').empty()
   subjects = $('#paper_subject_id').html()
   console.log(subjects)
   $('#paper_semester_id').hover ->
     semester = $('#paper_semester_id :selected').text()
     options = $(subjects).filter("optgroup[label='#{semester}']").html()
     if options
       $('#paper_subject_id').html(options)
     else
       $('#paper_subject_id').empty()
