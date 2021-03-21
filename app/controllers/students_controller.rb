class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def activate
    # byebug
    student = Student.find_by(id: params[:id])
    student.toggle_active_status
    # student.save
    # byebug
    redirect_to student_path(student.id)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end