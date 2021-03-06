# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  card_exp_month         :string
#  card_exp_year          :string
#  card_last4             :string
#  card_type              :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  extra_billing_info     :text
#  processor              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  trial_ends_at          :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  processor_id           :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  include Pay::Billable
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
    :posts,
    class_name: 'Post',
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
    foreign_key: 'user_id',
    inverse_of: :creator
  )
  
end
