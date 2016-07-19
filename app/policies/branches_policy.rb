class BranchesPolicy < ApplicationPolicy

  # GET /branches
  # GET /branches.json
  def index?
    user.rank > SCHOOL_RANK
  end

  # GET /branches/1
  # GET /branches/1.json
  def show?
    user.rank > SCHOOL_RANK || user.unit == @unit
  end

  # GET /branches/new
  def new?
    user.rank > SCHOOL_RANK
  end

  # GET /branches/1/edit
  def edit?
    user.rank > SCHOOL_RANK
  end

  # POST /branches
  # POST /branches.json
  def create?
    user.rank > SCHOOL_RANK
  end

  # PATCH/PUT /branches/1
  # PATCH/PUT /branches/1.json
  def update?
    user.rank > SCHOOL_RANK
  end

  # DELETE /branches/1
  # DELETE /branches/1.json
  def destroy?
    user.rank > SCHOOL_RANK
  end

end
