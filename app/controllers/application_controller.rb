class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :cas_filter
  before_action :authorize
  helper_method :current_user

  # Send users to CAS before allowing them into the app
  # User must have at least one role to access
  def cas_filter
    CASClient::Frameworks::Rails::Filter.filter(self)
  end

  def authorize
    redirect_to unauthorized_path if (session[:cas_user] && !current_user)
  end

  # This is actually a UserRole object, not a User object
  def current_user
    # Use the established current_user_id if one exists
    return UserRole.find(session[:current_user_id]) if session[:current_user_id]
    # Don't create a nil net ID!!
    return unless session[:cas_user]
    user = User.find_or_create_by(netid: session[:cas_user])
    # This is probably wrong, there's no need for a second session variable
    session[:current_user_id] = user.user_roles.first.try(:id)
    UserRole.find_by(id: session[:current_user_id])
  end
end
