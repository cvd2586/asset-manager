class Asset < ApplicationRecord
  has_many :images # FOR-IMAGE-UPLOAD
  belongs_to :user, optional: true
  accepts_nested_attributes_for :images # FOR-IMAGE-UPLOAD
  validates :name, presence: true
  belongs_to :user, required: false

  # FOR-IMAGE-UPLOAD
  def save_images(params)
    puts params[:images]['path']
    params[:images]['path'].each do |photo|
      self.images.create!(:path => photo)
    end
  end
  # FOR-IMAGE-UPLOAD
end
