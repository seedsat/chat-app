class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  def index
  end
end
