class UsersPolicy < ApplicationPolicy

  # GET /users
  # GET /users.json
  def index?
  end

  # GET /users/1
  # GET /users/1.json
  def show?
  end

  # GET /users/new
  def new?
  end

  # GET /users/1/edit
  def edit?
  end

  # POST /users
  # POST /users.json
  def create?
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update?
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy?
  end

end
