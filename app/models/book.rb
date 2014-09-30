class Book < ActiveRecord::Base
  has_many :reviews

  validates :author, presence: true
  validates :title, presence: true
end
