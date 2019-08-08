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

require 'test_helper'

class LevelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
