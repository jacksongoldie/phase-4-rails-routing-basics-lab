class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        sorted = students.sort_by {|student| -student.grade}
        render json: sorted
    end
end
