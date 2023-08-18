class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :blog_post_post,dependent: :destroy
  has_many :a, dependent: :destroy
  has_many :users
  has_many :liks
  # belongs_to :naren
end
