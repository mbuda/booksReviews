class Comment < ActiveRecord::Base
  belongs_to :review
  belongs_to :user

  validates :text, presence: true
end
