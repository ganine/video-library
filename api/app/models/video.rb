class Video < ApplicationRecord
  SUPPORTED_FILE_TYPES = ['video/mp4', 'video/mov']
  MAX_FILE_SIZE = 200.megabytes

  belongs_to :category

  has_one_attached :file

  validates_presence_of :title, :category
  validates :file, {
    attached: true,
    content_type: SUPPORTED_FILE_TYPES,
    size: { less_than: MAX_FILE_SIZE },
  }
end
