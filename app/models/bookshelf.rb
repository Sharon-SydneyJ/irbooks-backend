class Bookshelf < ApplicationRecord
    belongs_to :user
    has_many :bookshelf_books, dependent: :destroy
    has_many :books, through: :bookshelf_books
end
