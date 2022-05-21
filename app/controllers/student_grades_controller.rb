class StudentGradesController < ApplicationController
  before_action :set_student_grade, only: %i[ show edit update destroy ]
  def index
    @student_grades = StudentGrade.all
  end
  def show
  end

  def new
    @student_grade = StudentGrade.new
  end
  def edit
  end
  def create
    @student_grade = StudentGrade.new(student_grade_params)
    respond_to do |format|
      if @student_grade.save
        format.html { redirect_to student_grade_url(@student_grade), notice: "Student grade was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @student_grade.update(student_grade_params)
        format.html { redirect_to student_grade_url(@student_grade), notice: "Student grade was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @student_grade.destroy
    respond_to do |format|
      format.html { redirect_to student_grades_url, notice: "Student grade was successfully destroyed." }
    end
  end
  private
    def set_student_grade
      @student_grade = StudentGrade.find(params[:id])
    end
    def student_grade_params
      params.require(:student_grade).permit(:student_id, :grade_id, :seccion)
    end
end
