class AssessmentsController < ApplicationController

	def new
		@assessment = Assessment.new
		3.times do
		assessments	= @assessment.questions.build
			4.times{assessments.choices.build}
	
		end 
			
	end


	def index 
		@assessments = Assessment.all
	end 

	def show
		@assessment = Assessment.find(params[:id])
	end 

	def create
  	@assessment = Assessment.new(params[:course])

	  respond_to do |format|
		    if @assessment.save
		      format.html { redirect_to @assessment, notice: 'Assessment was successfully created.' }
		      format.json { render json: @assessment, status: :created, location: @course }
		    else
		      format.html { render action: "new" }
		      format.json { render json: @assessment.errors, status: :unprocessable_entity }
		    end
	  end
	end

	# def video_path
	# 	@videopath = @course.video.path.match(/\/system(.*)/)
	# end




	def edit
		@assessment = Assessment.find(params[:id])
	end 

	# def create
		# debugger
		# Choices.new(params[:questions][:choices])

	# end
end 
