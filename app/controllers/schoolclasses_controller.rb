class SchoolclassesController < ApplicationController
  load_and_authorize_resource
  before_action :set_schoolclass, only: [:show, :update, :destroy]

  # GET /schoolclasses
  def index
    @schoolclasses = Schoolclass.all

    render json: @schoolclasses
  end

  # GET /schoolclasses/1
  def show
    render json: @schoolclass
  end

  # POST /schoolclasses
  def create
    @schoolclass = Schoolclass.new(schoolclass_params)

    if @schoolclass.save
      render json: @schoolclass, status: :created, location: @schoolclass
    else
      render json: @schoolclass.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schoolclasses/1
  def update
    if @schoolclass.update(schoolclass_params)
      render json: @schoolclass
    else
      render json: @schoolclass.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schoolclasses/1
  def destroy
    @schoolclass.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schoolclass
      @schoolclass = Schoolclass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def schoolclass_params
      params.require(:schoolclass).permit(:grade_id,:numberofstudents,:calendar, :classroom, :name, :subject_id, :teacher_id, :vacancy)
    end
end
