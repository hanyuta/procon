class Comment < ApplicationRecord
    belongs_to :user

    validates :comment_data , presence: true
end
