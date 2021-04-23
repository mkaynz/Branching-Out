# == Schema Information
#
# Table name: plants
#
#  id          :bigint           not null, primary key
#  breed       :string
#  description :string
#  name        :string
#  price       :float
#  stock       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_plants_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class PlantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
