class CoursesController < ApplicationController 

	def index 
		@courses = Course.all

	end 

	def show
		@course = Course.find(params[:id])
	end 

	def new 
		@course = Course.new 
		1.times do
			question = @course.assessments.build
			4.times { question.choices.buld}
		end
	end 

	def edit
		@course = Course.find(params[:id])
	end 

end