class Naren < ApplicationRecord
  validates :body,presence: true
  belongs_to :blog_post
  has_many :users
end
