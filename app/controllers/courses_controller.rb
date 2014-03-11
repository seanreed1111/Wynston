class CoursesController < ApplicationController 

	def index 
		@courses = Course.all
	end 

	def show
		@course = Course.find(params[:id])
	end 

	def edit
	@course = Course.find(params[:id])
	end

  def create
  @course = Course.new(params[:course])

	  respond_to do |format|
		    if @course.save
		      format.html { redirect_to @course, notice: 'Course was successfully created.' }
		      format.json { render json: @course, status: :created, location: @course }
		    else
		      format.html { render action: "new" }
		      format.json { render json: @course.errors, status: :unprocessable_entity }
		    end
	  end
	end

	# def video_path
	# 	@videopath = @course.video.path.match(/\/system(.*)/)
	# end



	def new 
		@course = Course.new

	end 

	def edit
		@course = Course.find(params[:id])
	end 

end