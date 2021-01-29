class SubjectoferredsController < ApplicationController
  load_and_authorize_resource

  before_action :set_subjectoferred, only: [:show, :update, :destroy]

  # GET /subjectoferreds
  def index
    @subjectoferreds = Subjectoferred.all

    render json: @subjectoferreds
  end

  # GET /subjectoferreds/1
  def show
    render json: @subjectoferred
  end

  # POST /subjectoferreds
  def create
    @subjectoferred = Subjectoferred.new(subjectoferred_params)

    if @subjectoferred.save
      render json: @subjectoferred, status: :created, location: @subjectoferred
    else
      render json: @subjectoferred.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subjectoferreds/1
  def update
    if @subjectoferred.update(subjectoferred_params)
      render json: @subjectoferred
    else
      render json: @subjectoferred.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subjectoferreds/1
  def destroy
    @subjectoferred.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjectoferred
      @subjectoferred = Subjectoferred.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subjectoferred_params
      params.require(:subjectoferred).permit(:subject_id, :course_id)
    end
end
