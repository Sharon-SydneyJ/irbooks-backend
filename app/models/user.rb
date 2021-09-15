class User < ApplicationRecord
    has_many :bookshelves, dependent: :destroy
    has_many :books, through: :bookshelves
end
