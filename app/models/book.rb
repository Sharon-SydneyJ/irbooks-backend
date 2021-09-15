class Book < ApplicationRecord
    has_many :bookshelf_books, dependent: :destroy
    has_many :bookshelves, through: :bookshelf_books
end
