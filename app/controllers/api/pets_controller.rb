class Api::PetsController < ApplicationController
	before_action :set_user

  def index
    render json: @user.pets
  end
  
  def show 
    @pet = @user.pets.find(params[:id])
    render json: @pet
  end

  def create 
    @pet = @user.pets.new(pet_params)
    if @pet.save
      render json: @pet
    else
      render json: { errors: @pet.errors }, status: :unprocessable_entity
    end
  end

  def update
    @pet = @user.pets.find(params[:id])
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: { errors: @pet.errors }, status: :unprocessable_entity
    end
  end

  def destroy
   @user.pets.find(params[:id]).destroy
    render json: { message: 'Pet Deleted' }
  end
  private 
    # { todo: {title: "", complete: false}}
    def pet_params
      params.require(:pet).permit(:name, :dob, :weight, :breed)
    end

	def set_user
		@user = User.find(params[:user_id])
	end

end
