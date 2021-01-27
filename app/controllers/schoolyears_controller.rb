class SchoolyearsController < ApplicationController
  before_action :set_schoolyear, only: [:show, :update, :destroy]

  # GET /schoolyears
  def index
    @schoolyears = Schoolyear.all

    render json: @schoolyears
  end

  # GET /schoolyears/1
  def show
    render json: @schoolyear
  end

  # POST /schoolyears
  def create
    @schoolyear = Schoolyear.new(schoolyear_params)

    if @schoolyear.save
      render json: @schoolyear, status: :created, location: @schoolyear
    else
      render json: @schoolyear.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schoolyears/1
  def update
    if @schoolyear.update(schoolyear_params)
      render json: @schoolyear
    else
      render json: @schoolyear.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schoolyears/1
  def destroy
    @schoolyear.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schoolyear
      @schoolyear = Schoolyear.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def schoolyear_params
      params.require(:schoolyear).permit(:status, :year, :half)
    end
end
