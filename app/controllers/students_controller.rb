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
    @student = Student.new(post_params(:student))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(post_params(:student))
    # @student.update(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student)
  end
  
  	private

	def post_params(*args)
		params.require(:student).permit(*args)
		# params.require(:post).permit(:title, :description)
	end
end