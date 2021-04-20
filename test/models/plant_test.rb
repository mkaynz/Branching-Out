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
#
require "test_helper"

class PlantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
