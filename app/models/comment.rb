class Comment < ActiveRecord::Base
  belongs_to :review

  validates :text, presence: true
end
