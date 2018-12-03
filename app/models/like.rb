class Like < ApplicationRecord
	belongs_to :user
	belongs_to :comic, counter_cache: :likes_count
end
