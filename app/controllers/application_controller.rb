class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :cas_filter

  def cas_filter
    CASClient::Frameworks::Rails::Filter.filter(self)
  end
end
