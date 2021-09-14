class BookshelvesController < ApplicationController

    # GET /bookshelves
  def index
    bookshelves = Bookshelf.all
    render json: bookshelves
  end

end
