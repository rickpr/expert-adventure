class RecusalsPolicy < ApplicationPolicy
  # GET /recusals
  # GET /recusals.json
  def index?
    check_rank_and_admin
  end

  # GET /recusals/1
  # GET /recusals/1.json
  def show?
    check_rank_and_admin
  end

  # GET /recusals/new
  def new?
    check_rank_and_admin
  end

  # GET /recusals/1/edit
  def edit?
    check_rank_and_admin
  end

  # POST /recusals
  # POST /recusals.json
  def create?
    check_rank_and_admin
  end

  # PATCH/PUT /recusals/1
  # PATCH/PUT /recusals/1.json
  def update?
    check_rank_and_admin
  end

  # DELETE /recusals/1
  # DELETE /recusals/1.json
  def destroy?
    check_rank_and_admin
  end

end
