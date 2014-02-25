class CoursesController < ApplicationController 

	def index 
		@courses = Course.all

	end 

	def show
		@course = Course.find(params[:id])
	end 

	def new 
		@course = Course.new 
	end 

	def edit
		@course = Course.find(params[:id])

	end 

	def create
		@course = Course.new(params[:course])

		if @course.save
			redirect_to @course
		else
			render :action => 'new'
		end
	end

	def update
		@course = Course.find(params[:id])

		if @course.update(params[:course])
			redirect_to @course
		else
			render :action => 'edit'
		end
	end
	

end