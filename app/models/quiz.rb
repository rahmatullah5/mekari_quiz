# == Schema Information
#
# Table name: quizzes
#
#  id         :bigint           not null, primary key
#  answer     :string
#  cover      :string
#  hint       :text
#  point      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  level_id   :bigint
#
# Indexes
#
#  index_quizzes_on_level_id  (level_id)
#
# Foreign Keys
#
#  fk_rails_...  (level_id => levels.id)
#

class Quiz < ApplicationRecord
  belongs_to :level
  mount_uploaders :hint_images, GeneralImageUploader
  mount_uploader :cover, GeneralImageUploader

  validates :answer, :cover, :hint, :point, presence: true

  def shuffle_answer
    answer.split('').shuffle.join.downcase
  end

  def correct_answer?(answer)
    answer.eql?(self.answer.downcase)
  end
end
