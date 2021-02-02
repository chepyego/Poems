class Article < ApplicationRecord

    has_many :comments, dependent: :destroy
    validates :title, presence: true 
    validates :body, presence: true,   length: {minimum: 20} 
    has_one_attached :image

    
    
end
