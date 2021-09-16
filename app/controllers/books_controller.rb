class BooksController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # GET /books
  def index
    books = Book.all
    render json: books, except: [:created_at, :updated_at, :id]
  end

   # GET/books/:id
  def show
    book = Book.find(params[:id])
    render json: book
  end
  # Post/books/:id
  def create
    book = Book.create(book_params)
    render json: book, status: :created
  end

  # PATCH /books/:id
  def update
    book = Book.find_by(id: params[:id])
    book.update(book_params)
    render json: book
  end
  
   # DELETE /books/:id
  def destroy
    book = Book.find_by(id: params[:id])
    book.destroy
    head :no_content
  end

  private

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end

  def render_not_found_response
    render json: { error: "Book not found" }, status: :not_found
  end
      
  def book_params
    params.permit(:img_url, :title, :author, :description, :year_published, :read)
  end

end
