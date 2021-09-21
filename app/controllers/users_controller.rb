class UsersController < ApplicationController
  
  
  
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
  # GET /users
  def index
    users = User.all
    render json: users, include: :bookshelves, only: [:first_name, :user_name] 
  end

   # GET/users/:id
  def show
    user = User.find(params[:id])
    render json: user, include: :bookshelves
  end
  # Post/users/:id
  def create
    user = User.create(user_params)
    render json: user, status: :created
  end

  # PATCH /users/:id
  def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    render json: user
  end
  
   # DELETE /users/:id
  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    head :no_content
  end

  private

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end

  def render_not_found_response
    render json: { error: "User not found" }, status: :not_found
  end
      
  def user_params
    params.permit(:first_name, :last_name, :user_name, :email, :userid, :bookshelf)
  end

end
