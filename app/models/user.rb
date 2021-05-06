# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many(
    :plants,
    class_name: 'Plant',
    foreign_key: 'user_id',
    inverse_of: :creator
  )

  has_many(
    :ads,
    class_name: 'Ad',
    foreign_key: 'user_id',
    inverse_of: :creator
  )

  has_many(
    :reviews,
    class_name: 'Review',
         has_many(
          :plants,
          class_name: 'Plant',
          foreign_key: 'user_id',
          inverse_of: :creator
      )
  
    has_many(
    :posts,
    class_name: 'Post',
    foreign_key: 'user_id',
    inverse_of: :creator
  )
end
