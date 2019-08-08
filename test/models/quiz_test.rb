# == Schema Information
#
# Table name: quizzes
#
#  id          :bigint           not null, primary key
#  answer      :string
#  cover       :string
#  hint        :text
#  hint_images :string
#  point       :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  level_id    :bigint
#
# Indexes
#
#  index_quizzes_on_level_id  (level_id)
#
# Foreign Keys
#
#  fk_rails_...  (level_id => levels.id)
#

require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
