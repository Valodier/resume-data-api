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
    student = Student.find_by(id: params[:id])
    render json: student
  end
  def update
    student = Student.find_by(id: params[:id])

    student.first_name = params[:first_name] || student.first_name
    student.last_name = params[:last_name] || student.last_name
    student.email = params[:email] || student.email
    student.phone_number = params[:phone_number] || student.phone_number
    student.short_bio = params[:short_bio] || student.short_bio
    student.linkedin_url = params[:linkedin_url] || student.linkedin_url
    student.twitter_handle = params[:twitter_handle] || student.twitter_handle
    student.website_url = params[:website_url] || student.website_url
    student.online_resume_url = params[:online_resume_url] || student.online_resume_url
    student.github_url = params[:github_url] || student.github_url
    student.phone_number = params[:phone_number] || student.phone_number

    if student.save
      render json: student
    else
      render json:{errors: student.error.full_messages}, status: 422
    end
  end
  def destroy
    student = Student.find_by(id: params[:id])
    student.destroy
    render json: {message: "Student eliminated."}
  end

end
