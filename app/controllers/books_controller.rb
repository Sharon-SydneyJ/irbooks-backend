class BooksController < ApplicationController
    
    # GET /birds
  def index
    books = Book.all
    render json: books
  end
end
