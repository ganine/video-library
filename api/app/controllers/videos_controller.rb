class VideosController < ApplicationController

  def index
    @videos = Video.all

    render json: @videos
  end

  def create
    @video = Video.new(video_params)

    if @video.save
      render json: @video, status: :created
    else
      render json: { errors: @video.errors }, status: :unprocessable_entity
    end
  end

  private

  def video_params
    params.permit(:title, :category_id)
  end
end
