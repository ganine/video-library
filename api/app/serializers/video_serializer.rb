class VideoSerializer
  include Rails.application.routes.url_helpers

  def initialize(video)
    @video = video
  end

  def as_json(*)
    {
      id: video.id,
      title: video.title,
      category: {
        id: video.category.id,
        name: video.category.name,
      },
      file: {
        url: url_for(video.file),
        thumbnails: thumbnails_for(video),
      }
    }
  end

  private

  attr_accessor :video

  def thumb_url(video, dimension)
    url_for(video.file.preview(resize_to_limit: dimension).processed)
  end

  def thumbnails_for(video)
    Hash.new.tap do |thumbnails|
      Video::THUMBNAIL_DIMENSIONS.each do |size, dimension|
        thumbnails[size] = thumb_url(video, dimension)
      end
    end
  end
end