class ApplicationController < ActionController::Base
  #def authenticate_user!
  #  return if admin_signed_in?
  #  super
  #end



  #def forem_user
  #  current_user
  #end
  #helper_method :forem_user

  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
end

