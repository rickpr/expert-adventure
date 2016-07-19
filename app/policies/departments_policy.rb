class DepartmentsController < ApplicationController
  # GET /departments
  # GET /departments.json
  def index?
    user.rank > UNIT_RANK
  end

  # GET /departments/1
  # GET /departments/1.json
  def show?
    user.rank > UNIT_RANK || user.unit_id == @department.id
  end

  # GET /departments/new
  def new?
    user.rank > UNIT_RANK
  end

  # GET /departments/1/edit
  def edit?
    user.rank > UNIT_RANK
  end

  # POST /departments
  # POST /departments.json
  def create?
    user.rank > UNIT_RANK
  end

  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update?
    user.rank > UNIT_RANK
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy?
    user.rank > UNIT_RANK
  end

end
