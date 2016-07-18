class RecusalsController < ApplicationController
  before_action :set_recusal, only: [:show, :edit, :update, :destroy]

  # GET /recusals
  # GET /recusals.json
  def index
    @recusals = Recusal.all
  end

  # GET /recusals/1
  # GET /recusals/1.json
  def show
  end

  # GET /recusals/new
  def new
    @recusal = Recusal.new
  end

  # GET /recusals/1/edit
  def edit
  end

  # POST /recusals
  # POST /recusals.json
  def create
    @recusal = Recusal.new(recusal_params)

    respond_to do |format|
      if @recusal.save
        format.html { redirect_to @recusal, notice: 'Recusal was successfully created.' }
        format.json { render :show, status: :created, location: @recusal }
      else
        format.html { render :new }
        format.json { render json: @recusal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recusals/1
  # PATCH/PUT /recusals/1.json
  def update
    respond_to do |format|
      if @recusal.update(recusal_params)
        format.html { redirect_to @recusal, notice: 'Recusal was successfully updated.' }
        format.json { render :show, status: :ok, location: @recusal }
      else
        format.html { render :edit }
        format.json { render json: @recusal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recusals/1
  # DELETE /recusals/1.json
  def destroy
    @recusal.destroy
    respond_to do |format|
      format.html { redirect_to recusals_url, notice: 'Recusal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recusal
      @recusal = Recusal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recusal_params
      params.require(:recusal).permit(:reviewer_id, :candidate_id)
    end
end
