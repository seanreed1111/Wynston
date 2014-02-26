class CoursesController < ApplicationController 

	def index 
		@courses = Course.all

	end 

	def show
		@course = Course.find(params[:id])
	end 

	def new 
		@course = Course.new
		# question = Question.new

		# 3.times do
		debugger
			assessments = @course.assessments.build
		 	4.times { assessments.questions.build }

		# end
	end 

	def edit
		@course = Course.find(params[:id])
	end 

end