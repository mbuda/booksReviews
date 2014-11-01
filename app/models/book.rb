class Book < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  validates :author, presence: true
  validates :title, presence: true
end
