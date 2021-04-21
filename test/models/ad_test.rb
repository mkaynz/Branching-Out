# == Schema Information
#
# Table name: ads
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plant_id   :bigint
#
# Indexes
#
#  index_ads_on_plant_id  (plant_id)
#
# Foreign Keys
#
#  fk_rails_...  (plant_id => plants.id)
#
require "test_helper"

class AdTest < ActiveSupport::TestCase
  test "fixtures are valid" do
    ads.each do |ad|
      assert ad.valid?, ad.errors.full_messages.inspect 
    end
  end

  test "title must be present" do
    x = ads(:one)
    x.title = ''
    assert_not x.title?
  end

  test "price must be present" do
    x = ads(:one)
    x.price = ''
    assert_not x.price?
  end

  test "stock must be present" do
    x = ads(:one)
    x.stock = ''
    assert_not x.stock?
  end


end
