class StudentsController < ApplicationController

  def index
    students = Student.all.order(:id)
    render json: students
  end
  def create
    
  end
  def show
    
  end
  def update
    
  end
  def destroy
    
  end

end
