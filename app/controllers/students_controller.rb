class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students 
    end 

    def grades
        students = Student.all
        ne_s = students.order("grade desc")
        render json: ne_s 
    end 
end
