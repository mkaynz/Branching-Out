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
class Plant < ApplicationRecord
    validates :price, presence: true
    validates :stock, presence: true

    has_one_attached :image

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
end
