class AssessmentsController < ApplicationController

	def new
		@assessment = Assessment.new
		3.times do
			@assessment.questions.build
		end
	end

	def create
		# debugger
		Choices.new(params[:questions][:choices])

	end
end
