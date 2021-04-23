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
class Plant < ApplicationRecord
    validates :price, presence: true
    validates :stock, presence: true

  

    has_many(
        :ads,
        class_name: 'Ad',
        foreign_key: 'plant_id',
        inverse_of: :plant,
        dependent: :destroy
    )

    has_many(
        :reviews,
        class_name: 'Review',
        foreign_key: 'plant_id',
        inverse_of: :plant,
        dependent: :destroy
    )

    has_many(
        :tips,
        class_name: 'Tip',
        foreign_key: 'plant_id',
        inverse_of: :plant,
        dependent: :destroy
    )

    belongs_to(
        :creator,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :plants
    )
end
