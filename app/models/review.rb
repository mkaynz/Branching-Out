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
class Review < ApplicationRecord
    belongs_to(
        :plant,
        class_name: 'Plant',
        foreign_key: 'plant_id',
        inverse_of: :reviews
    )

    belongs_to(
        :creator,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :reviews
    )
end
