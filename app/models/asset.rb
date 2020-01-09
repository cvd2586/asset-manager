class Asset < ApplicationRecord
  validates :name, presence: true
  belongs_to :user, required: false
end
