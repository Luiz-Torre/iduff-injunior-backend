class SubjectstudiedsController < ApplicationController
  load_and_authorize_resource
  before_action :set_subjectstudied, only: [:show, :update, :destroy]

  # GET /subjectstudieds
  def index
    @subjectstudieds = Subjectstudied.all

    render json: @subjectstudieds
  end

  # GET /subjectstudieds/1
  def show
    render json: @subjectstudied
  end

  # POST /subjectstudieds
  def create
    @subjectstudied = Subjectstudied.new(subjectstudied_params)

    if @subjectstudied.save
      render json: @subjectstudied, status: :created, location: @subjectstudied
    else
      render json: @subjectstudied.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subjectstudieds/1
  def update
    if @subjectstudied.update(subjectstudied_params)
      render json: @subjectstudied
    else
      render json: @subjectstudied.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subjectstudieds/1
  def destroy
    @subjectstudied.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjectstudied
      @subjectstudied = Subjectstudied.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subjectstudied_params
      params.require(:subjectstudied).permit(:student_id, :subject_id)
    end
end
