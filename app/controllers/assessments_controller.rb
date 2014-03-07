class AssessmentsController < ApplicationController


	def index 
		@assessments = Assessment.all
	end 

	def show
		@assessment = Assessment.find(params[:id])

	end 

	def new
		@assessment = Assessment.new
		3.times do 
			question = @assessment.questions.build
			3.times { question.choices.build}
		end 
	end

	def create
  	@assessment = Assessment.new(params[:assessment])

	  respond_to do |format|
		    if @assessment.save
		      format.html { redirect_to @assessment, notice: 'Assessment was successfully created.' }
		      format.json { render json: @assessment, status: :created, location: @assessment }
		    else
		      format.html { render action: "new" }
		      format.json { render json: @assessment.errors, status: :unprocessable_entity }
		    end
	  end
	end


	# def create
		# debugger
		# Choices.new(params[:questions][:choices])

	# end

	def edit
		@assessment = Assessment.find(params[:id])
	end 


  def update
    @assessment = Assessment.find(params[:id])

    respond_to do |format|
      if @assessment.update_attribute(params[:assessment])
        format.html { redirect_to @location, notice: 'Assessment was successfully updated.'}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assessment.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @assessment = Assessment.find(params[:id])
    @assessment.destroy

    respond_to do |format|
      format.html { redirect_to assessments_url }
      format.json { head :no_content }
    end
  end

end 
