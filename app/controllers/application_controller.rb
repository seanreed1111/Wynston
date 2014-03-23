class ApplicationController < ActionController::Base
  protect_from_forgery #with: :exception
  #before_action :authenticate_user!

private

  def can_manage_courses?
    user_signed_in? && current_user.can_manage_courses?
  end
  helper_method :can_manage_courses?

end
