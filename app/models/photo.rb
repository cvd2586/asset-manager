class Photo < ApplicationRecord
  mount_uploader :photo, PictureUploader
  belongs_to :asset, required: true
end
