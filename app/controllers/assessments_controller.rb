class AssessmentsController < ApplicationController

	def new
		@assessment = Assessment.new
		3.times do
		assessments	= @assessment.questions.build
			4.times{assessments.choices.build}
	
		end 
			
	end


	# def create
		# debugger
		# Choices.new(params[:questions][:choices])

	# end
end 
