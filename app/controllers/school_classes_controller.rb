class SchoolClassesController < ApplicationController
  def index
    render plain: 'school classes'
  end
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.new(post_params(:school_class))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(post_params(:school_class))
    redirect_to school_class_path(@school_class)
  end
  
  private
  	def post_params(*args)
		params.require(:school_class).permit(*args)
		# params.require(:post).permit(:title, :description)
	end
end
