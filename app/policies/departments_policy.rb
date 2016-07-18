class DepartmentsController < ApplicationController
  # GET /departments
  # GET /departments.json
  def index?
    current_user.rank > UNIT_RANK
  end

  # GET /departments/1
  # GET /departments/1.json
  def show?
    current_user.rank > UNIT_RANK || current_user.unit_id == @department.id
  end

  # GET /departments/new
  def new?
    current_user.rank > UNIT_RANK
  end

  # GET /departments/1/edit
  def edit?
    current_user.rank > UNIT_RANK
  end

  # POST /departments
  # POST /departments.json
  def create?
    current_user.rank > UNIT_RANK
  end

  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update?
    current_user.rank > UNIT_RANK
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy?
    current_user.rank > UNIT_RANK
  end

end
