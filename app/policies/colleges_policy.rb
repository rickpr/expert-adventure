class CollegesPolicy < ApplicationPolicy

  # GET /colleges
  # GET /colleges.json
  def index?
    current_user.rank > SCHOOL_RANK
  end

  # GET /colleges/1
  # GET /colleges/1.json
  def show?
    current_user.rank > SCHOOL_RANK || current_user.college == @college.id
  end

  # GET /colleges/new
  def new?
    current_user.rank > SCHOOL_RANK
  end

  # GET /colleges/1/edit
  def edit?
    current_user.rank > SCHOOL_RANK
  end

  # POST /colleges
  # POST /colleges.json
  def create?
    current_user.rank > SCHOOL_RANK
  end

  # PATCH/PUT /colleges/1
  # PATCH/PUT /colleges/1.json
  def update?
    current_user.rank > SCHOOL_RANK
  end

  # DELETE /colleges/1
  # DELETE /colleges/1.json
  def destroy?
    current_user.rank > SCHOOL_RANK
  end

end
