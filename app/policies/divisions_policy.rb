class DivisionsPolicy < ApplicationPolicy
  # GET /divisions
  # GET /divisions.json
  def index?
    current_user.rank > UNIT_RANK
  end

  # GET /divisions/1
  # GET /divisions/1.json
  def show?
    current_user.rank > UNIT_RANK || current_user.unit_id == @division.id
  end

  # GET /divisions/new
  def new?
    curren_user.rank > UNIT_RANK
  end

  # GET /divisions/1/edit
  def edit?
    current_user.rank > UNIT_RANK
  end

  # POST /divisions
  # POST /divisions.json
  def create?
    current_user.rank > UNIT_RANK
  end

  # PATCH/PUT /divisions/1
  # PATCH/PUT /divisions/1.json
  def update?
    current_user.rank > UNIT_RANK
  end

  # DELETE /divisions/1
  # DELETE /divisions/1.json
  def destroy?
    current_user.rank > UNIT_RANK
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_division?
      @division = Division.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def division_params?
      params.require(:division).permit(:school_id, :name, :type)
    end
end
