class UserRolesPolicy < ApplicationPolicy

  # GET /user_roles
  # GET /user_roles.json
  def index?
    check_rank_and_admin
  end

  # GET /user_roles/1
  # GET /user_roles/1.json
  def show?
    check_rank_and_admin
  end

  # GET /user_roles/new
  def new?
    check_rank_and_admin
  end

  # GET /user_roles/1/edit
  def edit?
    check_rank_and_admin
  end

  # POST /user_roles
  # POST /user_roles.json
  def create?
    check_rank_and_admin
  end

  # PATCH/PUT /user_roles/1
  # PATCH/PUT /user_roles/1.json
  def update?
    check_rank_and_admin
  end

  # DELETE /user_roles/1
  # DELETE /user_roles/1.json
  def destroy?
    check_rank_and_admin
  end

end
