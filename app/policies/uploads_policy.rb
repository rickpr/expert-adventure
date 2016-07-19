class UploadsPolicy < ApplicationPolicy
  before_action :set_upload, only: [:show, :edit, :update, :destroy]

  # GET /uploads
  # GET /uploads.json
  # def index?
  # end

  # GET /uploads/1
  # GET /uploads/1.json
  # def show?
  # end

  # GET /uploads/new
  # def new?
  # end

  # GET /uploads/1/edit
  # def edit?
  # end

  # POST /uploads
  # POST /uploads.json
  # def create?
  # end

  # PATCH/PUT /uploads/1
  # PATCH/PUT /uploads/1.json
  # def update?
  # end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  # def destroy?
  # end

end
