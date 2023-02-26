class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students_by_grade = Student.order(grade: :desc)
    render json: students_by_grade
  end

  def highest_grade
    highest_grade = Student.maximum(:grade)
    top_student = Student.find_by(grade: highest_grade)
    render json: top_student
  end
end
