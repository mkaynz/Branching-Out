# == Schema Information
#
# Table name: posts
#
#  id          :bigint           not null, primary key
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Post < ApplicationRecord

    has_many(
    :comments,
    class_name: 'Comment',
    foreign_key: 'post_id',
    inverse_of: :post,
    dependent: :destroy
  )
end
