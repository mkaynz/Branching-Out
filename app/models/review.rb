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
#
# Indexes
#
#  index_reviews_on_plant_id  (plant_id)
#
# Foreign Keys
#
#  fk_rails_...  (plant_id => plants.id)
#
class Review < ApplicationRecord
    belongs_to(
        :plant,
        class_name: 'Plant',
        foreign_key: 'plant_id',
        inverse_of: :reviews
    )
end
