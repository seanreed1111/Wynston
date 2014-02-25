class ContactController < ApplicationController

  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(params[:message])
    @message.subject = "Teach on Wynston" 

    if user_signed_in?
      @message.name = current_user.first_name
      @message.email = current_user.email
      @message.body = "Logged in."
    else
      @message.name = "Unknown"
      @message.email = "Unknown"
      @message.body = "Not logged in."
    end


  	if @message.valid?
  		NotificationsMailer.new_message(@message).deliver
  		redirect_to(root_path, :notice => "Message was successfully sent to Wynston.")
  	else
  		flash.now.alert = "Please fill out required fields."
  		render :new
  	end
  end

end
