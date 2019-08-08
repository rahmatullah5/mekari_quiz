# == Schema Information
#
# Table name: levels
#
#  id          :bigint           not null, primary key
#  cover       :string
#  description :text
#  slug        :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_levels_on_slug  (slug) UNIQUE
#

class Level < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  mount_uploader :cover, GeneralImageUploader
  has_many :quizzes

  validates :cover, :description, :title, presence: true
end
