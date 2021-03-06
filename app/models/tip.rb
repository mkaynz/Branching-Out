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
class Tip < ApplicationRecord
    belongs_to(
        :plant,
        class_name: 'Plant',
        foreign_key: 'plant_id',
        inverse_of: :tips
    )
end
