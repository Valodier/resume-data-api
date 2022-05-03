class ExperienceController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    experiences = Experience.all

    render json: experiences
  end

  def show
    experience = Experience.find(params[:id])

    render json: experience
  end

  def create
    experience = Experience.create!(
      user_id: current_user.id,
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
    )

    if experience.save
      render json: experience
    else
      render json: { errors: experience.errors.full_messages }, status: :bad_request
    end
  end

  def update
    experience = Experience.find(params[:id])

    experience.start_date = params[:start_date] || experience.start_date
    experience.end_date = params[:end_date] || experience.end_date
    experience.job_title = params[:job_title] || experience.job_title
    experience.company_name = params[:company_name] || experience.company_name
    experience.details = params[:details] || experience.details

    if experience.save
      render json: { message: "experience updated" }, status: :ok
    else
      render json: { errors: experience.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    experience = Experience.find(params[:id])
    experience.destroy
    render json: { message: "experience destroyed!" }
  end
end
