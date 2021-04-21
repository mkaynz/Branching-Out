# == Schema Information
#
# Table name: checkouts
#
#  id         :bigint           not null, primary key
#  address    :string
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Checkout < ApplicationRecord
end
