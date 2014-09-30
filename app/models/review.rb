class Review < ActiveRecord::Base
  belongs_to :book
  has_many :comments

  validates :title, presence: true
  validates :description, presence: true, uniqueness: true
end
