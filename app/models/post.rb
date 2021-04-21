# == Schema Information
#
# Table name: posts
#
#  id          :bigint           not null, primary key
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Post < ApplicationRecord

  has_many(
  :comments,
  class_name: 'Comment',
  foreign_key: 'post_id',
  inverse_of: :post,
  dependent: :destroy
  )

  belongs_to(
  :creator,
  class_name: 'User',
  foreign_key: 'user_id',
  inverse_of: :posts
)
end
