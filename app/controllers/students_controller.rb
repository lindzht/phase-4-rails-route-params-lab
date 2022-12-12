class StudentsController < ApplicationController

  def index
    students = Student.all
    # students = Student.search_for_student(params)
    students = Student.all.select do |student|
      student.first_name == (params[:first_name]).capitalize() || student.last_name == (params[:last_name]).capitalize()
    end
    render json: students

  end

  def find_student
    student = Student.find(params[:id])
    render json: student
  end

end
