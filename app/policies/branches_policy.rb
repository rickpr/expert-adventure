class BranchesPolicy < ApplicationPolicy

  # GET /branches
  # GET /branches.json
  def index?
    current_user.rank > SCHOOL_RANK
  end

  # GET /branches/1
  # GET /branches/1.json
  def show?
    current_user.rank > SCHOOL_RANK || current_user.unit == @unit
  end

  # GET /branches/new
  def new?
    current_user.rank > SCHOOL_RANK
  end

  # GET /branches/1/edit
  def edit?
    current_user.rank > SCHOOL_RANK
  end

  # POST /branches
  # POST /branches.json
  def create?
    current_user.rank > SCHOOL_RANK
  end

  # PATCH/PUT /branches/1
  # PATCH/PUT /branches/1.json
  def update?
    current_user.rank > SCHOOL_RANK
  end

  # DELETE /branches/1
  # DELETE /branches/1.json
  def destroy?
    current_user.rank > SCHOOL_RANK
  end

end
