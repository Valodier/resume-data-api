class StudentsController < ApplicationController

  def index
    students = Student.all.order(:id)
    render json: students
  end
  
  def create
    students = Student.create!(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      phone_number: params[:phone_number]
    )

    if student.save
      render json: student
    else
      render json: {errors: student.errors.full_messages}, status: 422
    end
  end

  def show
    
  end
  def update
    
  end
  def destroy
    
  end

end
