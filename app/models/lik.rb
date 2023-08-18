class Lik < ApplicationRecord
  validates :user ,uniqueness:{ scope: :blog_post_id }
  belongs_to :user
  belongs_to :blog_post
end
