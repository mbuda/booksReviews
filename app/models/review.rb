class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true, uniqueness: true
end
