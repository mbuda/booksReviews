class Book < ActiveRecord::Base
  has_many :reviews, depend: :destroy

  validates :author, presence: true
  validates :title, presence: true
end
