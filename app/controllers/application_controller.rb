class ApplicationController < ActionController::Base
  # declare as helper method to be accessible in the view
  helper_method :current_user

  def current_user
    user_id = session[:user_id]
    user_id && User.find(session[:user_id]).email
  end
end
