class Comic < ApplicationRecord
	belongs_to :user
	has_many :like, dependent: :destroy
	has_many :comments
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end
end
