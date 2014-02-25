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

end