class VideosController < ApplicationController
  def index
    videos = list_videos
    render json: videos
  end

  def create
    video = Video.new(video_params)

    if video.save
      render json: serializer_for(video), status: :created
    else
      render json: { errors: video.errors }, status: :unprocessable_entity
    end
  end

  private

  def video_params
    params.permit(:title, :category_id, :file)
  end

  def list_videos
    Video.find_each.map do |video|
      serializer_for(video)
    end
  end

  def serializer_for(video)
    VideoSerializer.new(video)
  end
end
