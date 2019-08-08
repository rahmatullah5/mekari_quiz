# == Schema Information
#
# Table name: levels
#
#  id          :bigint           not null, primary key
#  cover       :string
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Level < ApplicationRecord
  has_many :quizzes
  mount_uploader :cover, GeneralImageUploader
end
