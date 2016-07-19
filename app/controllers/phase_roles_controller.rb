class PhaseRolesController < ApplicationController
  before_action :set_phase_role, only: [:show, :edit, :update, :destroy]

  # GET /phase_roles
  # GET /phase_roles.json
  def index
    @phase_roles = PhaseRole.all
  end

  # GET /phase_roles/1
  # GET /phase_roles/1.json
  def show
  end

  # GET /phase_roles/new
  def new
    @phase_role = PhaseRole.new
  end

  # GET /phase_roles/1/edit
  def edit
  end

  # POST /phase_roles
  # POST /phase_roles.json
  def create
    @phase_role = PhaseRole.new(phase_role_params)

    respond_to do |format|
      if @phase_role.save
        format.html { redirect_to @phase_role, notice: 'Phase role was successfully created.' }
        format.json { render :show, status: :created, location: @phase_role }
      else
        format.html { render :new }
        format.json { render json: @phase_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phase_roles/1
  # PATCH/PUT /phase_roles/1.json
  def update
    respond_to do |format|
      if @phase_role.update(phase_role_params)
        format.html { redirect_to @phase_role, notice: 'Phase role was successfully updated.' }
        format.json { render :show, status: :ok, location: @phase_role }
      else
        format.html { render :edit }
        format.json { render json: @phase_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phase_roles/1
  # DELETE /phase_roles/1.json
  def destroy
    @phase_role.destroy
    respond_to do |format|
      format.html { redirect_to phase_roles_url, notice: 'Phase role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phase_role
      @phase_role = PhaseRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phase_role_params
      params.require(:phase_role).permit(:phase_id, :role_id)
    end
end
