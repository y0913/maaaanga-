class Comment < ApplicationRecord
belongs_to :comic
belongs_to :user
end
