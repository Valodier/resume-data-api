class CapstonesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  def index
    capstones = Capstone.all

    render json: capstones
  end

  def show
    capstone = Capstone.find(params[:id])

    render json: capstone
  end

  def create
    capstone = Capstone.create!(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
    )

    if capstone.save
      render json: capstone
    else
      render json: { errors: capstone.errors.full_messages }, status: :bad_request
    end
  end

  def update
    capstone = Capstone.find(params[:id])

    capstone.name = params[:name] || capstone.name
    capstone.description = params[:description] || capstone.description
    capstone.url = params[:url] || capstone.url
    capstone.screenshot = params[:screenshot] || capstone.screenshot

    if capstone.save
      render json: { message: "capstone updated" }, status: :ok
    else
      render json: { errors: capstone.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    capstone = Capstone.find(params[:id])
    capstone.destroy
    render json: { message: "capstone destroyed!" }
  end
end
