# == Schema Information
#
# Table name: messages
#
#  id              :bigint           not null, primary key
#  body            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  conversation_id :bigint
#  user_id         :bigint
#
# Indexes
#
#  index_messages_on_conversation_id  (conversation_id)
#  index_messages_on_user_id          (user_id)
#
class Message < ApplicationRecord

    belongs_to :conversation
    belongs_to :user
  
    validates_presence_of :body, :conversation_id, :user_id
  
    def message_time
      created_at.strftime("%m/%d/%y at %l:%M %p")
    end
  end
