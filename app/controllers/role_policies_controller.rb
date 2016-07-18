class RolePoliciesController < ApplicationController
  before_action :set_role_policy, only: [:show, :edit, :update, :destroy]

  # GET /role_policies
  # GET /role_policies.json
  def index
    @role_policies = RolePolicy.all
  end

  # GET /role_policies/1
  # GET /role_policies/1.json
  def show
  end

  # GET /role_policies/new
  def new
    @role_policy = RolePolicy.new
  end

  # GET /role_policies/1/edit
  def edit
  end

  # POST /role_policies
  # POST /role_policies.json
  def create
    @role_policy = RolePolicy.new(role_policy_params)

    respond_to do |format|
      if @role_policy.save
        format.html { redirect_to @role_policy, notice: 'Role policy was successfully created.' }
        format.json { render :show, status: :created, location: @role_policy }
      else
        format.html { render :new }
        format.json { render json: @role_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /role_policies/1
  # PATCH/PUT /role_policies/1.json
  def update
    respond_to do |format|
      if @role_policy.update(role_policy_params)
        format.html { redirect_to @role_policy, notice: 'Role policy was successfully updated.' }
        format.json { render :show, status: :ok, location: @role_policy }
      else
        format.html { render :edit }
        format.json { render json: @role_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_policies/1
  # DELETE /role_policies/1.json
  def destroy
    @role_policy.destroy
    respond_to do |format|
      format.html { redirect_to role_policies_url, notice: 'Role policy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_policy
      @role_policy = RolePolicy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_policy_params
      params.require(:role_policy).permit(:administrator_role_id, :managed_role_id, :within)
    end
end
