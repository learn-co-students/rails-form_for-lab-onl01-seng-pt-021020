class StudentsController < ApplicationController
  def create
    @student = Student.create(form_params(:first_name, :last_name))

    redirect_to student_path(@student)
  end
end
