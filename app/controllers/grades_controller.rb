class GradesController < ApplicationController
  before_action :set_grade, only: %i[ show edit update destroy ]
  def index
    @grades = Grade.all
  end
  def show
  end
  def new
    @grade = Grade.new
  end
  def edit
  end
  def create
    @grade = Grade.new(grade_params)

    respond_to do |format|
      if @grade.save
        format.html { redirect_to grade_url(@grade), notice: "Grade was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @grade.update(grade_params)
        format.html { redirect_to grade_url(@grade), notice: "Grade was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to grades_url, notice: "Grade was successfully destroyed." }
    end
  end
  private
    def set_grade
      @grade = Grade.find(params[:id])
    end
    def grade_params
      params.require(:grade).permit(:name, :teacher_id)
    end
end
