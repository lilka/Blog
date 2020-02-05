class Post < ApplicationRecord
    validates :title, :hook, presence: {message: "Custom message"}
    validates :title, uniqueness: true

    has_one_attached :picture
    has_rich_text :rich_body
    has_many :comments
    
end
