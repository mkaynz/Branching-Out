# == Schema Information
#
# Table name: plants
#
#  id          :bigint           not null, primary key
#  breed       :string
#  description :string
#  name        :string
#  price       :decimal(, )
#  stock       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Plant < ApplicationRecord
    has_many(
        :ads,
        class_name: 'Ad',
        foreign_key: 'ad_id',
        inverse_of: :plant,
        dependent: :destroy
    )
end
