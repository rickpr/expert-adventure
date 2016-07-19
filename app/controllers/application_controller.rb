class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :cas_filter

  def cas_filter
    CASClient::Frameworks::Rails::Filter.filter(self)
  end

  def current_user
    UserRole.find(
      session[:current_user_id] ||= User.find_by(netid: session[:cas_user]).user_roles.find(
        session[:role] ||= 0)
    )
  end
end
