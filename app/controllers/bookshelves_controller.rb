class BookshelvesController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # GET /bookshelves
  def index
    bookshelves = Bookshelf.all
    render json: bookshelves, include: :books
  end

  # GET/bookshelves/:id
  def show
    bookshelf = Bookshelf.find(params[:id])
    render json: bookshelf, include: :books 
     
  end

  # Post/bookshelves/:id
  def create
    bookshelf = Bookshelf.create(bookshelf_params)
    render json: bookshelf, status: :created
  end

  # PATCH /bookshelves/:id
  def update
    bookshelf = Bookshelf.find_by(id: params[:id])
    bookhelf.update(bookshelf_params)
    render json: bookshelf
  end

  private

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end

  def render_not_found_response
    render json: { error: "Bookshelf not found" }, status: :not_found
  end
      
  def bookshelf_params
    params.permit(:name, :description)
  end



end
