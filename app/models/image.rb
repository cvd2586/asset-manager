class Image < ApplicationRecord
  belongs_to :asset # FOR-IMAGE-UPLOAD
  mount_uploader :path, ImageUploader # FOR-IMAGE-UPLOAD
end
