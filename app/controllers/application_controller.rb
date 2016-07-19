class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :cas_filter

  # Send users to CAS before allowing them into the app
  def cas_filter
    CASClient::Frameworks::Rails::Filter.filter(self)
  end

  # This is actually a UserRole object, not a User object
  def current_user
    fail unless session[:cas_user]
    return UserRole.find(session[:current_user_id]) if session[:current_user_id]
    user = User.find_or_create_by(netid: session[:cas_user])
    session[:current_role_id] ||= user.roles.first.id
    session[:current_user_id] = UserRole.find(session[:current_role_id]).id
    UserRole.find(session[:current_role_id])
  end
end
