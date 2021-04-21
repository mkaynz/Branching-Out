# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  status     :string
#  total      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Order < ApplicationRecord

    has_many(
        :line_items,
        class_name: 'LineItem',
        foreign_key: 'order_id',
        inverse_of: :order,
        dependent: :destroy

    )
end
