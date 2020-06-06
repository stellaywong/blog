class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5 }
    has_many :comments, dependent: :destroy 
    # dependent -- deleting an article deletes all its comments too
end
