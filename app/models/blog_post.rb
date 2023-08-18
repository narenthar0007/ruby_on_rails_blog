class BlogPost < ApplicationRecord
    before_save{self.title = title.capitalize}
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 6 }
    has_many :narens, dependent: :destroy
    belongs_to :user
    has_many :liks
end
