class User < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :user_name, uniqueness: true, presence: true
    

    has_many :bookshelves, dependent: :destroy
    has_many :books, through: :bookshelves
end
