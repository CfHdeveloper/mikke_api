class Genre < ApplicationRecord
    has_many :circle_genres, dependent: :destroy
    has_many :circles, through: :circle_genres
    validates :name, uniqueness: true
    
end
