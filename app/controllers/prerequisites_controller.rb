class PrerequisitesController < ApplicationController
  load_and_authorize_resource
  before_action :set_prerequisite, only: [:show, :update, :destroy]

  # GET /prerequisites
  def index
    @prerequisites = Prerequisite.all

    render json: @prerequisites
  end

  # GET /prerequisites/1
  def show
    render json: @prerequisite
  end

  # POST /prerequisites
  def create
    @prerequisite = Prerequisite.new(prerequisite_params)

    if @prerequisite.save
      render json: @prerequisite, status: :created, location: @prerequisite
    else
      render json: @prerequisite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prerequisites/1
  def update
    if @prerequisite.update(prerequisite_params)
      render json: @prerequisite
    else
      render json: @prerequisite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prerequisites/1
  def destroy
    @prerequisite.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prerequisite
      @prerequisite = Prerequisite.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prerequisite_params
      params.require(:prerequisite).permit(:subject_id,:prerequisitecode)
    end
end
