class CollegesPolicy < ApplicationPolicy

  # GET /colleges
  # GET /colleges.json
  def index?
    user.rank > SCHOOL_RANK
  end

  # GET /colleges/1
  # GET /colleges/1.json
  def show?
    user.rank > SCHOOL_RANK || user.college == @college.id
  end

  # GET /colleges/new
  def new?
    user.rank > SCHOOL_RANK
  end

  # GET /colleges/1/edit
  def edit?
    user.rank > SCHOOL_RANK
  end

  # POST /colleges
  # POST /colleges.json
  def create?
    user.rank > SCHOOL_RANK
  end

  # PATCH/PUT /colleges/1
  # PATCH/PUT /colleges/1.json
  def update?
    user.rank > SCHOOL_RANK
  end

  # DELETE /colleges/1
  # DELETE /colleges/1.json
  def destroy?
    user.rank > SCHOOL_RANK
  end

end
