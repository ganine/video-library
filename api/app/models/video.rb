class Video < ApplicationRecord
  SUPPORTED_FILE_TYPES = ['video/mp4', 'video/mov']
  MAX_FILE_SIZE = 200.megabytes
  THUMBNAIL_DIMENSIONS = {
    small: [64, 64],
    medium: [128, 128],
    large: [256, 256],
  }

  belongs_to :category

  has_one_attached :file

  validates_presence_of :title, :category
  validates :file, {
    attached: true,
    content_type: SUPPORTED_FILE_TYPES,
    size: { less_than: MAX_FILE_SIZE },
  }
end
