class Message < ApplicationRecord
  belongs_to :discussion_thread
  belongs_to :user
end
