# == Schema Information
#
# Table name: tips
#
#  id         :bigint           not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plant_id   :bigint
#
# Indexes
#
#  index_tips_on_plant_id  (plant_id)
#
# Foreign Keys
#
#  fk_rails_...  (plant_id => plants.id)
#
require "test_helper"

class TipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
