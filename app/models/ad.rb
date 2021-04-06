# == Schema Information
#
# Table name: ads
#
#  id         :bigint           not null, primary key
#  body       :string
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
class Ad < ApplicationRecord
    belongs_to(
        :plant,
        class_name: 'Plant',
        foreign_key: 'plant_id',
        inverse_of: :ads
    )
end
