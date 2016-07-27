class HomeController < ApplicationController
  skip_before_action :authorize, only: :unauthorized
  def index
  end

  def license
  end

  def unauthorized
    render layout: 'unauthorized'
  end

  def change_role
  end

  def logout
    reset_session
  end
end
