# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  body       :string
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plant_id   :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_reviews_on_plant_id  (plant_id)
#  index_reviews_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (plant_id => plants.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
