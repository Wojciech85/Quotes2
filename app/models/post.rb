class Post < ApplicationRecord
  has_many :comments, :dependent => :delete_all
  validates :body, presence: true, length: {minimum: 2}
end
