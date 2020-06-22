class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    #byebug
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit!
  end
end

#params: <ActionController::Parameters {"student"=><ActionController::Parameters {"first_name"=>"Bill", "last_name"=>"Smith"} permitted: true>, "controller"=>"students", "action"=>"create"} permitted: false>
#student_params: <ActionController::Parameters {"first_name"=>"Bill", "last_name"=>"Smith"} permitted: true>
