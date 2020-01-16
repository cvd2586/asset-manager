class Asset < ApplicationRecord
  accepts_nested_attributes_for :photos
  validates :name, presence: true
  belongs_to :user, required: false
  has_many :photos
end
