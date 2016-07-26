class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate
  helper_method :current_user

  # Send users to CAS before allowing them into the app
  # User must have at least one role to access
  def authenticate
    CASClient::Frameworks::Rails::Filter.filter(self)
    redirect_to unauthorized_path unless current_user
  end

  # This is actually a UserRole object, not a User object
  def current_user
    # Use the established current_user_id if one exists
    return UserRole.find(session[:current_user_id]) if session[:current_user_id]
    fail unless session[:cas_user]
    user = User.find_or_create_by(netid: session[:cas_user])
    # This is probably wrong, there's no need for a second session variable
    session[:current_role_id] ||= user.roles.first.id
    session[:current_user_id] = UserRole.find(session[:current_role_id]).id
    UserRole.find(session[:current_role_id])
  end
end
