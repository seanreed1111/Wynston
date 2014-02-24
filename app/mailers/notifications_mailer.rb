class NotificationsMailer < ActionMailer::Base

  default :from => "testing25chapel@gmail.com"
  default :to => "testing25chapel@gmail.com"

  def new_message(message)
  	@message = message
  	mail(:subject => "#{message.subject}")
  end


end
