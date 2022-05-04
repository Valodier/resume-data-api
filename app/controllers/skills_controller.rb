class SkillsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]

  def index
    skills = Skill.all
    render json: skills
  end

  def create
    skill = Skill.create!(
      student_id: current_user.id,
      skill_name: params["skill_name"]
    )
    if skill.save
      render json: skill
    else
      render json: {errors: skill.errors.full_messages}, status: 422
    end
  end

  def show
    skill = Skill.find_by(id: params[:id])
    render json: skill
  end

  def update
    skill = Skill.find_by(id: params[:id])
    skill.skill_name = params[:skill_name] || skill.skill_name

    if skill.save
      render json: skill
    else
      render json: {errors: skill.errors.full_messages}, status: 422
    end
  end

  def destroy
    skill = Skill.find_by(id: params[:id])
    skill.destroy
    render json: {message: "Skill destroyed"}
  end

end
