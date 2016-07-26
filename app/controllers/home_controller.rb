class HomeController < ApplicationController
  def index
  end

  def license
  end

  def unauthorized
  end

  def change_role
  end

  def logout
    reset_session
  end
end
