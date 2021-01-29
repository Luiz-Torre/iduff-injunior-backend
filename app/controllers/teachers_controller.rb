class TeachersController < ApplicationController
    load_and_authorize_resource

  before_action :set_student, only: [:show, :update, :destroy]

  # GET /students
  def index
    @teachers = Teacher.all

    render json: @teachers
  end

  # GET /students/1
  def show
    render json: @teacher
  end

  # POST /students
  def create
    @teacher = Teacher.new(student_params)

    if @teacher.save
      render json: @teacher, status: :created, location: @teacher
    else
      render json: @teacher.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /students/1
  def update
    if @teacher.update(student_params)
      render json: @teacher
    else
      render json: @teacher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /students/1
  def destroy
    @teacher.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_params
      params.require(:teacher).permit(:user_id, :department_id)
    end
end
